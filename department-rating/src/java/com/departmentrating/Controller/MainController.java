/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.Controller;

import com.departmentrating.models.ActivatePerformance;
import com.departmentrating.models.Admin;
import com.departmentrating.models.AggregatePerformance;
import com.departmentrating.models.AggregateViewStructure;
import com.departmentrating.models.ChangePassword;
import com.departmentrating.models.FormRatingModel;
import com.departmentrating.models.MonthLists;
import com.departmentrating.models.Rating;
import com.departmentrating.models.Reset;
import com.departmentrating.models.Users;
import com.departmentrating.models.resetModel;
import com.departmentrating.services.ActivatePerformanceService;
import com.departmentrating.services.AdminService;
import com.departmentrating.services.ChangePasswordService;
import com.departmentrating.services.RatingService;
import com.departmentrating.services.ResetService;
import com.departmentrating.services.UserService;
import com.departmentrating.utilities.General;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Chibuike.Ugwu
 */
@Controller

public class MainController {
    @Autowired
    UserService userService;
    
    @Autowired
    AdminService adminService;
    
    @Autowired
    ActivatePerformanceService activateService;
    
    @Autowired
    General general;
    
    @Autowired
    RatingService ratingService;
    
    @Autowired
    ResetService resetService;
    
    @Autowired
    ChangePasswordService changePwordService;
    
    static final Logger LOGGER = Logger.getLogger(MainController.class);
    
    @RequestMapping(value= {"/", "/login"} , method = RequestMethod.GET)
    public ModelAndView login(ModelAndView model) {
                model.addObject("user", new Users());
                model.setViewName("login");
		return model;
        }
    
    @RequestMapping(value= "/test" , method = RequestMethod.GET)
    public ModelAndView testPage(ModelAndView model) {
                model.addObject("user", new Users());
                model.setViewName("test");
		return model;
        }
    
    @RequestMapping(value= "/login" , method = RequestMethod.POST)
    public String login(@Valid @ModelAttribute("user") Users user, BindingResult result, HttpSession session, Model model) {
        LOGGER.debug("is reaching here");
        LOGGER.debug("validation results: "+result.toString());
        if(result.hasErrors())
                {
                    LOGGER.debug("there is error");
                    System.out.println("yes ther is error");
                    return "login";
                }
        List<Users> retrievedUsers = userService.getUser(user.getEmail());
        if(retrievedUsers.size() > 0) //This is a valid user
        {
            if(general.verifyPassword(user.getPassword(), retrievedUsers.get(0).getPassword())) //verify password here
            {
                List<Admin> retrievedAdmins = adminService.getAdmin(user.getEmail());
                if(retrievedAdmins.size() > 0)
                {
                    session.setAttribute("isAdmin",true);
                }
                Users retrievedUser = retrievedUsers.get(0);
                retrievedUser.setPassword("");
                session.setAttribute("usersInfo", retrievedUser);
                return "redirect:/dashboard";
            }
             String errorMessage = "Invalid password";
                model.addAttribute("errorMessage", errorMessage);
                return "login";
        }
        //still need to handle invalid username and password error here
        String errorMessage = "Invalid username";
        model.addAttribute("errorMessage", errorMessage);
        return "login";
        }
    
    
    @RequestMapping(value= "/resetpassword" , method = RequestMethod.POST)
    public String sendResetLink(@Valid @ModelAttribute("user") Users user, BindingResult result, HttpSession session, Model model) {
        
        List<Users> retrievedUsers = userService.getUser(user.getEmail());
        if(retrievedUsers.size() > 0) //This is a valid user
        {
                String uid = UUID.randomUUID().toString().replaceAll("-","");
                String token = general.generateToken(user.getEmail(), uid);
                //save into the db
                resetService.insertToken(user.getEmail(), token);
                //send email here by calling
                
                String resetLink = "http://35.204.217.57:8080/VfdPerformanceRating/changepassword?token="+token;
                resetModel resetData = new resetModel();
                resetData.setStaffEmail(user.getEmail());
                resetData.setResetLink(resetLink);
                
                general.sendResetLink(resetData);
                String successMessage = "Reset Link has been sent to your email";
                model.addAttribute("successMessage",successMessage);
                
                return "resetpassword";
        }
        
                String errorMessage = "Email address does not exist in the Database";
                model.addAttribute("errorMessage", errorMessage);
                return "resetpassword";
        
        
    }
    
    @RequestMapping(value= "/logout" , method = RequestMethod.GET)
    public String logout(HttpServletRequest request) {
              HttpSession session = request.getSession();
              session.setAttribute("usersInfo", null);
              session.setAttribute("isAdmin", null);
              session.invalidate();
              return "redirect:/login";
        }
    
    @RequestMapping(value= "/resetpassword" , method = RequestMethod.GET)
    public ModelAndView resetPassword(ModelAndView model) {
                model.addObject("user", new Users());
                model.setViewName("resetpassword");
		return model;
        }
    
    
    @RequestMapping(value= {"/changepassword"} , method = RequestMethod.GET)
    public ModelAndView changePassword(ModelAndView model, @RequestParam(value="token", required=false) String token, final RedirectAttributes attrib) {
                if(attrib.getFlashAttributes().get("successMessage")==null)
                {
                    
                
                    if(token==null)
                {
                    LOGGER.debug("token is null ");
                    model.setViewName("redirect:/login");
                    return model ;
                }
                LOGGER.debug("token is:  "+token);
                ArrayList<String> decodeToken = general.decodeToken(token);
                if(decodeToken.size()!= 2)
                {
                    LOGGER.debug("token size is not 2");
                    model.setViewName("redirect:/login");
                    return model;
                }
                String email = decodeToken.get(0);
                //String realToken = decodeToken.get(1);
                
                //check if data exist in the db
                List<Reset> resetData = resetService.getToken(email, token);
                if(resetData.size()>0)
                {
                    ChangePassword user = new ChangePassword();
                    user.setEmail(email);
                    model.addObject("user", user);
                    model.setViewName("changepassword");
                    return model;
                }
                    model.setViewName("redirect:/login");
                    return model;
                }
                
                model.addObject("user", new ChangePassword());
                    model.setViewName("changepassword");
                    return model;
        }
    @RequestMapping(value= {"/changepassword"} , method = RequestMethod.POST)
    public ModelAndView changePassword(ModelAndView model,@ModelAttribute("user") ChangePassword user, HttpServletRequest request,BindingResult result, final RedirectAttributes redirectAttr) {
            String hashedPword = general.generateHashedPassword(user.getPassword());
            changePwordService.changePassword(user.getEmail(), hashedPword);
            resetService.updateStatus(user.getEmail());
            
            redirectAttr.addFlashAttribute("successMessage", "Password changed Successfully");
             
            
                model.setViewName("redirect:/changepassword");
		return model;
        }
            
    @RequestMapping(value= "/dashboard" , method = RequestMethod.GET)
    public ModelAndView mainpage(ModelAndView model, HttpSession session) {
                if(session.getAttribute("usersInfo")==null)
                {
                    
                    model.setViewName("redirect:/login");
                    return model;
                }
                Users user = (Users)session.getAttribute("usersInfo");
                model.addObject("user",user);
                if(session.getAttribute("isAdmin")!= null)
                {
                    model.addObject("isAdmin",(boolean)session.getAttribute("isAdmin"));
                }
               
                /*This is to display the latest rating done by the user*/
               List<Rating> rating = ratingService.getCurrentMonthRating(user.getEmail());
               model.addObject("ratings",rating);
                /*end*/
                
                /*This is to display the past 3 months rating*/
                List<String> months = general.generateDateRange();
                List<AggregatePerformance> threeMonthRating = ratingService.get3MonthsRating(months);
                List<MonthLists> monthLists = general.generateMonthLists();
                
                /*structuring here*/
                List<AggregateViewStructure> aggregateStructure = general.generateRatingStructure(threeMonthRating, monthLists, false);
                model.addObject("aggregateStructure",aggregateStructure);
                /*end*/
                
                model.setViewName("dashboard");
		return model;
        }
    
                // Controller for Rate History page
    @RequestMapping(value= "/ratehistory" , method = RequestMethod.GET)
    public ModelAndView rateHistory(ModelAndView model, HttpSession session) {
                if(session.getAttribute("usersInfo")==null)
                {
                    model.setViewName("redirect:/login");
                    return model;
                }
                Users user = (Users)session.getAttribute("usersInfo");
                model.addObject("user",user);
                if(session.getAttribute("isAdmin")!= null)
                {
                    model.addObject("isAdmin",(boolean)session.getAttribute("isAdmin"));
                }
                
                List <Rating> allRatings = ratingService.getRatingHistory(user.getEmail());
                model.addObject("allRatings",allRatings);
                model.setViewName("ratehistory");
		return model;
        }
   
            /* Controller to get the rating page and display it models**/    
    @RequestMapping(value= "/rating" , method = RequestMethod.GET)
    public ModelAndView rating(ModelAndView model, HttpServletRequest request, @ModelAttribute("ratingModel") FormRatingModel ratingModel) {
                HttpSession session = request.getSession();
                        if(session.getAttribute("usersInfo")==null)
               {
                   model.setViewName("redirect:/login");
                   return model;
               }
                Users user = (Users)session.getAttribute("usersInfo");
                LOGGER.debug("users_info: "+user.getEmail());
                List<ActivatePerformance> activateData = activateService.getActivatePerformance();
                if(activateData.size() > 0)
                {
                    model.addObject("month",activateData.get(0).getMonth());
                    model.addObject("year",activateData.get(0).getYear());
                    List<Rating> ratings = ratingService.getRatings(user.getEmail(), activateData.get(0).getMonth(),
                            activateData.get(0).getYear());
                    model.addObject("isActivated",true);
                    if(ratings.size() > 0)
                    {
                        model.addObject("isRatingDone",true);
                    }
                    
                }
                else
                {
                    //Get current month and current year
                    List<String> monthDetails = general.getCurrentDate();
                    model.addObject("month",monthDetails.get(0));
                    model.addObject("year",monthDetails.get(1));
                    
                }
                
                model.addObject("user",user);
                
                model.setViewName("rating");
		return model;
        }
    
    
    //Controller to post/submit all the ratings done by the user.
    @RequestMapping(value= "/rating" , method = RequestMethod.POST)
    public ModelAndView storeRating(ModelAndView model, HttpServletRequest request, @ModelAttribute("ratingModel") FormRatingModel ratingModel, BindingResult result, final RedirectAttributes redirectAttr) {
                HttpSession session = request.getSession();
                Users user = (Users)session.getAttribute("usersInfo");
                //Get all request
                LOGGER.debug("users_inside_post");
                
                LOGGER.debug("myrequestpayloadnew: treasury"+request.getParameter("treasury")+"ce: "+request.getParameter("ce")+"legal "+request.getParameter("legal"));
                String errorString = general.errorString(request);
                if(errorString.isEmpty())
                {
                    List<Rating> ratings = general.getRatings(request, user.getEmail());
//                    if(ratings.size() < 7)
//                    {
//                        //return an error
//                        //still need to handle invalid username and password error hre
//                        
//                        String errorMessage = "Please kindly rate all departments";
//                        redirectAttr.addFlashAttribute("errorMessage", errorMessage);
//    //                    model.addObject("errorMessage", errorMessage);
//                        model.setViewName("redirect:/rating");
//                        return model;
//                    }
                        ratingService.storeRating(ratings);
                        redirectAttr.addFlashAttribute("successMessage","Ratings submitted successfully");

                        model.setViewName("redirect:/rating");
                        return model;
                }
                
                redirectAttr.addFlashAttribute("errorMessage", errorString);
                model.setViewName("redirect:/rating");
                return model;
                        
        }
    
     @RequestMapping(value= "/performancelist" , method = RequestMethod.GET)
      public ModelAndView performanceList(ModelAndView model, HttpSession session) {
       if(session.getAttribute("usersInfo")==null)
       {
           model.setViewName("redirect:/login");
           return model;
       }
        Users user = (Users)session.getAttribute("usersInfo");
        
            model.addObject("user",user);
            if(session.getAttribute("isAdmin")!= null)
              {
                model.addObject("isAdmin",(boolean)session.getAttribute("isAdmin"));
              }
            List<MonthLists> listYears = ratingService.getYears();
            model.addObject("yearLists",listYears);
         
            model.setViewName("performancelist");
            return model;

                  
        }
      @RequestMapping(value= "/performancelist" , method = RequestMethod.POST)
      public ModelAndView GETList(ModelAndView model, HttpServletRequest request, final RedirectAttributes redirectAttr) {
          
          if(request.getParameter("selectedMonth")==null || request.getParameter("selectedMonth").isEmpty() || request.getParameter("selectedYear") == null ||
                  request.getParameter("selectedYear").isEmpty())
          {
              redirectAttr.addFlashAttribute("errorMessage","Please kindly select month and year");
              model.setViewName("redirect:/performancelist");
              return model;
          }
          
          String selectedMonth = request.getParameter("selectedMonth");
          int selectedYear = Integer.parseInt(request.getParameter("selectedYear"));
          
          if(request.getParameter("viewType").equals("Summary")) //summary
          {
              redirectAttr.addFlashAttribute("Summary","Summary");
              redirectAttr.addFlashAttribute("isSummary", true);
              List<AggregatePerformance> specificMonthRating = ratingService.getSpecificMonthYearRating(selectedMonth, selectedYear);
              MonthLists singleMonth = new MonthLists();
              singleMonth.setMonth(selectedMonth);
              singleMonth.setYear(selectedYear);
              ArrayList<MonthLists> monthLists = new ArrayList<>();
              monthLists.add(singleMonth);
             
                /*structuring here*/
                List<AggregateViewStructure> aggregateStructure = general.generateRatingStructure(specificMonthRating, monthLists, true);
                redirectAttr.addFlashAttribute("aggregateStructure",aggregateStructure);
                
          }
          else //details
          {
              List<Rating> allRatings = ratingService.getRatings(selectedMonth, selectedYear);
              redirectAttr.addFlashAttribute("allRatings", allRatings);
          }
          
          redirectAttr.addFlashAttribute("monthSelected",selectedMonth);
          redirectAttr.addFlashAttribute("yearSelected",selectedYear);
          model.setViewName("redirect:/performancelist");
          return model;
                  
      }
      @RequestMapping(value= "/activate-rating" , method = RequestMethod.GET)
      public ModelAndView activateRating(ModelAndView model, HttpSession session) {
       if(session.getAttribute("usersInfo")==null)
       {
           model.setViewName("redirect:/login");
           return model;
       }
        Users user = (Users)session.getAttribute("usersInfo");
        
            model.addObject("user",user);
            if(session.getAttribute("isAdmin")!= null)
              {
                model.addObject("isAdmin",(boolean)session.getAttribute("isAdmin"));
              }
            
            List<MonthLists> getActivationYears = general.getActivationYears();
            model.addObject("yearLists", getActivationYears);
            
            List<ActivatePerformance> activateData = activateService.getActivatePerformance();
            if(activateData.size() > 0)
                {
                    model.addObject("month",activateData.get(0).getMonth());
                    model.addObject("year",activateData.get(0).getYear());
                    model.addObject("isActivated",true);
                }
                else
                {
                    //Get current month and current year
                    List<String> monthDetails = general.getCurrentDate();
                    
                    
                    model.addObject("month",monthDetails.get(0));
                    model.addObject("year", monthDetails.get(1));
                    
                }
                    model.setViewName("activate-rating");
                    return model;

                  
        }
      @RequestMapping(value= "/activate-rating" , method = RequestMethod.POST)
      public ModelAndView GETRating(ModelAndView model, HttpServletRequest request, HttpSession session, final RedirectAttributes redirectAttr, @RequestParam String open_close) {
          if(session.getAttribute("usersInfo")==null)
       {
           model.setViewName("redirect:/login");
           return model;
       }
       if(open_close.contains("Deactivate"))
       {
           //this implies that rating window is about to be closed.
           //call service to close the current rating window
           List<ActivatePerformance> activateData = activateService.getActivatePerformance();
           activateService.closeActivationWindow();
           String month = activateData.get(0).getMonth();
           int year = activateData.get(0).getYear();
           redirectAttr.addFlashAttribute("successMessage", "Rating window for "+month+", "+year+" successfully deactivated");
           //redirect back to the page showing a success message of window successfully closed
       }
       else
       {
           
        if(request.getParameter("selectedMonth")==null || request.getParameter("selectedMonth").isEmpty() || request.getParameter("selectedYear") == null ||
                  request.getParameter("selectedYear").isEmpty())
          {
              redirectAttr.addFlashAttribute("errorMessage","Please kindly select month and year");
              model.setViewName("redirect:/activate-rating");
              return model;
          }
        
         String selectedMonth = request.getParameter("selectedMonth");
         int selectedYear = Integer.parseInt(request.getParameter("selectedYear"));
         
           //this implies that rating window is about to be opened
           //call service to activate the rating window for the current month and year
           List<String> ActivationYears = general.getCurrentDate();
           activateService.openActivationWindow(selectedMonth, selectedYear);
           redirectAttr.addFlashAttribute("successMessage", "Rating window for "+ selectedMonth +", "+ selectedYear +" successfully activated");
           //rediret back to the page showing a success message of window successfully opened.
       }
           
        
            model.setViewName("redirect:/activate-rating");
             return model;       
      }
}

