/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.departmentrating.utilities;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.departmentrating.models.AggregatePerformance;
import com.departmentrating.models.AggregateViewStructure;
import com.departmentrating.models.DepartmentRatings;
import com.departmentrating.models.MonthLists;
import com.departmentrating.models.Rating;
import com.departmentrating.models.resetModel;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author Chibuike.Ugwu
 */
@Component
public class General {
    public List<Rating> getRatings(HttpServletRequest request, String email)
    {
        
        ArrayList<Rating> ratings = new ArrayList<>();
        String month = request.getParameter("month");
        int year = Integer.parseInt(request.getParameter("year"));
        /*Get treasury rating*/
        if(request.getParameter("treasury")!=null && !request.getParameter("treasury").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("TREASURY");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("treasury")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_treasury")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_treasury")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_treasury")));
            if(request.getParameter("comments_treasury")==null)
                {
                rating.setComment(null);
            }
            else{
                rating.setComment(request.getParameter("comments_treasury"));
            }
                
           
            ratings.add(rating);
        }
            
        
        /*end of treasury rating*/
        
        if(request.getParameter("treasury")!=null && !request.getParameter("treasury").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("TREASURY");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("treasury")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_treasury")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_treasury")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_treasury")));
            rating.setComment(request.getParameter("comments_treasury"));
            
//            if(request.getParameter("comments_treasury")==null)
//                {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_treasury"));
//            }
                
           
            ratings.add(rating);
        }
        
        /*get legal rating*/
        if(request.getParameter("client")!=null && !request.getParameter("client").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("CLIENT EXPERIENCE");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble (request.getParameter("client")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_client")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_client")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_client")));
             rating.setComment(request.getParameter("comments_client"));
            
//            if(request.getParameter("comments_client")==null)
//                {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_client"));
//            }
                
           
            ratings.add(rating);
        }            
        /*end of legal rating*/
        
        
        /*get Information Technology rating*/
        if(request.getParameter("it")!=null && !request.getParameter("it").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("IT");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("it")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_it")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_it")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_it")));
            rating.setComment(request.getParameter("comments_it"));
            
//            if(request.getParameter("comments_it")==null)
//                {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_it"));
//            }
//                
           
            ratings.add(rating);
        }            
        /*end of Information Technology rating*/
        
        /*get  Human resources rating*/
        if(request.getParameter("hr")!=null && !request.getParameter("hr").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("HUMAN RESOURCE");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("hr")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_hr")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_hr")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_hr")));
            rating.setComment(request.getParameter("comments_hr"));
            
//            if(request.getParameter("comments_hr")==null)
//               {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_hr"));
//            }
//                
           
            ratings.add(rating);
        }
            
        /*end of Human reources rating*/
        
        /*get client experience rating*/
        if(request.getParameter("ce")!=null & !request.getParameter("ce").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("STRATEGY");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("ce")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_ce")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_ce")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_ce")));
            rating.setComment(request.getParameter("comments_ce"));
            
//            if(request.getParameter("comments_ce")==null)
//               {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_ce"));
//            }
//                
           
            ratings.add(rating);
        }
            
        /*end of client experience rating*/
        
        /*get finance rating*/
        if(request.getParameter("finance")!=null && !request.getParameter("finance").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("FINANCE");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("finance")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_finance")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_finance")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_finance")));
            rating.setComment(request.getParameter("comments_finance"));
            
            
//            if(request.getParameter("comments_finance")==null)
//               {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_finance"));
//            }
                
           
            ratings.add(rating);
        }
        /*end of finance rating*/
        
        /*get mcc rating*/
        if(request.getParameter("mcc")!=null && !request.getParameter("mcc").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("MCC");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("mcc")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_mcc")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_mcc")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_mcc")));
            rating.setComment(request.getParameter("comments_mcc"));
            
//            if(request.getParameter("comments_mcc")==null)
//            {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_mcc"));
//            }
                
           
            ratings.add(rating);
        }
            
        /*end of mcc rating*/
        
        
        /*get resources rating*/
        if(request.getParameter("resource")!=null && !request.getParameter("resource").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("RESOURCE");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("resource")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_resource")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_resource")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_resource")));
            rating.setComment(request.getParameter("comments_resource"));
            
//            if(request.getParameter("comments_resource")==null)
//            {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_resource"));
//            }
            
            ratings.add(rating);
        }
        
        /*get operations rating*/
        if(request.getParameter("fx_ops")!=null && !request.getParameter("fx_ops").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("FX OPS");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("fx_ops")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_fx_ops")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_fx_ops")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_fx_ops")));
            rating.setComment(request.getParameter("comments_fx_ops"));
            
//            if(request.getParameter("comments_fx_ops")==null)
//            {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_fx_ops"));
//            }
//                
     
            ratings.add(rating);
        }
        
         if(request.getParameter("anch_ops")!=null && !request.getParameter("anch_ops").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("ANCHORIA OPS");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("anch_ops")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_anch_ops")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_anch_ops")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_anch_ops")));
            rating.setComment(request.getParameter("comments_anch_ops"));
            
//            if(request.getParameter("comments_anch_ops")==null)
//            {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_anch_ops"));
//            }
//                
           
            ratings.add(rating);
        }
         
         
          if(request.getParameter("mfb_ops")!=null && !request.getParameter("mfb_ops").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("MFB OPS");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("mfb_ops")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_mfb_ops")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_mfb_ops")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_mfb_ops")));
            rating.setComment(request.getParameter("comments_mfb_ops"));
            
//            if(request.getParameter("comments_mfb_ops")==null)
//            {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_mfb_ops"));
//            }
//                
           
            ratings.add(rating);
        }
          
           if(request.getParameter("try_ops")!=null && !request.getParameter("try_ops").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("TREASURY OPS");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble(request.getParameter("try_ops")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_try_ops")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_try_ops")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_try_ops")));
            rating.setComment(request.getParameter("comments_try_ops"));
            
//            if(request.getParameter("comments_try_ops")==null)
//            {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_try_ops"));
//            }
//                
           
            ratings.add(rating);
        }
           
           if(request.getParameter("exco")!=null && !request.getParameter("exco").isEmpty())
        {
            Rating rating = new Rating();
            rating.setDepartment("EXECUTIVE OFFICE");
            rating.setEmail(email);
            rating.setMonth(month);
            rating.setYear(year);
            rating.setRateNumber(Double.parseDouble (request.getParameter("exco")));
            rating.setAccessibility(Integer.parseInt(request.getParameter("access_exco")));
            rating.setQualityOfService(Integer.parseInt(request.getParameter("qos_exco")));
            rating.setTurnaroundTime(Integer.parseInt(request.getParameter("turn_exco")));
            rating.setComment(request.getParameter("comments_exco"));
            
            
//            if(request.getParameter("comments_exco")==null)
//                {
//                rating.setComment(null);
//            }
//            else{
//                rating.setComment(request.getParameter("comments_exco"));
//            }
//                
           
            ratings.add(rating);
        }  
           
           
        return ratings;
    }
    
    

    public ArrayList<String> getCurrentDate()
    {
        ArrayList<String> monthDetails = new ArrayList<>();
        LocalDateTime dateTime = LocalDateTime.now();
        monthDetails.add(dateTime.getMonth().toString());
        monthDetails.add(Integer.toString(dateTime.getYear()));
        return monthDetails;
    }
    
    public List<MonthLists> getActivationYears()
    {
        LocalDateTime dateTime = LocalDateTime.now();
        int currentYear = dateTime.getYear();
        int previousYear = currentYear - 1;
        ArrayList<MonthLists> monthLists = new ArrayList<>();
        MonthLists currentMonthLists = new MonthLists();
        currentMonthLists.setMonth("JANUARY");
        currentMonthLists.setYear(currentYear);
        MonthLists previousMonthLists = new MonthLists();
        previousMonthLists.setMonth("JANUARY");
        previousMonthLists.setYear(previousYear);
        monthLists.add(currentMonthLists);
        monthLists.add(previousMonthLists);
        return monthLists;
    }
   public  List<String> generateDateRange() {
       int monthDifference = 3;
       Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Africa/Lagos"));
       ArrayList<String> monthLists = new ArrayList<>();
       int endMonth = calendar.get(Calendar.MONTH);
       int endYear = calendar.get(Calendar.YEAR);
       for(int i = monthDifference-1; i >= 0; i--)
       {
           String month = "";
           String year = "";
           if(endMonth != -1)
           {
               month = getExactMonthName(endMonth);
               year = Integer.toString(endYear);
              
           }
           else
           {
               endMonth = 11;
               endYear--;
               month = getExactMonthName(endMonth);
               year = Integer.toString(endYear);
               
           }
          
           monthLists.add(month+year);
           endMonth--;
       }
       return monthLists;
   }
   
   public List<MonthLists> generateMonthLists() {
       int monthDifference = 3;
       Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Africa/Lagos"));
       ArrayList<MonthLists> monthLists = new ArrayList<>();
       int endMonth = calendar.get(Calendar.MONTH);
       int endDay = calendar.get(Calendar.DAY_OF_MONTH);
       int endYear = calendar.get(Calendar.YEAR);
       for(int i = monthDifference-1; i >= 0; i--)
       {
           MonthLists mth = new MonthLists();
           if(endMonth != -1)
           {
               mth.setMonth(getExactMonthName(endMonth));
               mth.setYear(endYear);
           }
           else
           {
               endMonth = 11;
               endYear--;
               mth.setMonth(getExactMonthName(endMonth));
               mth.setYear(endYear);
           }
          
           monthLists.add(mth);
           endMonth--;
       }
       return monthLists;
   }
    private String getExactMonthName(int monthIndex)
   {
       String [] monthLists  = {"JANUARY","FEBRUARY","MARCH","APRIL","MAY","JUNE","JULY","AUGUST","SEPTEMBER","OCTOBER","NOVEMBER","DECEMBER"};
       return monthLists[monthIndex];
   }
   
   public List<AggregateViewStructure> generateRatingStructure(List<AggregatePerformance> aggregatePerformance, List<MonthLists> monthLists, boolean isSpecific)
   {
       ArrayList<AggregateViewStructure> aggregateView = new ArrayList<>();
       //if there is no record,
       String [] departmentLists = {"TREASURY","STRATEGY", "FINANCE", "HUMAN RESOURCE","IT","LEGAL","MCC", "CLIENT EXPERINCE", "FX OPS", "MFB OPS", "ANCHORIA OPS", "TREASURY OPS", "RESOURCES/ADMIN", "EXECUTIVE OFFICE"};
       if((aggregatePerformance==null || aggregatePerformance.isEmpty()) && !isSpecific)
       {
           for(MonthLists m : monthLists)
           {
               AggregateViewStructure aggregate = new AggregateViewStructure();
               aggregate.setMonth(m.getMonth());
               aggregate.setYear(m.getYear());
               ArrayList<DepartmentRatings> departmentRatings = new ArrayList<>();
               
               for(String s : departmentLists)
               {
                   DepartmentRatings departments = new DepartmentRatings();
                   departments.setDepartment(s);
                   departments.setScore(0);
                   departments.setAccessibility(0);
                   departments.setQos(0);
                   departments.setTurn(0);
                   
                   departmentRatings.add(departments);
               }
               aggregate.setDepartmentRatings(departmentRatings);
               aggregateView.add(aggregate);
           }
           return aggregateView;
       }
       else if((aggregatePerformance==null || aggregatePerformance.isEmpty()) && isSpecific)
       {
           return aggregateView;
       }
       //if there is record
       for(MonthLists m : monthLists)
       {
            AggregateViewStructure aggregate = new AggregateViewStructure();
               aggregate.setMonth(m.getMonth());
               aggregate.setYear(m.getYear());
               ArrayList<DepartmentRatings> departmentRatings = new ArrayList<>();
               boolean isMonthRecordExist = false;
               for(AggregatePerformance ag : aggregatePerformance)
               {
                   DepartmentRatings departments = new DepartmentRatings();
                   if(m.getMonth().trim().equals(ag.getMonth().trim()) && m.getYear() == ag.getYear())
                   {
                       isMonthRecordExist = true;
                       departments.setDepartment(ag.getDepartment());
                       departments.setScore(((double)ag.getTotalRating()/(5*(double)ag.getParticipantNumber())));
                       departments.setAccessibility(((double)ag.getAccessibility()/(5*(double)ag.getParticipantNumber())));
                       departments.setQos(((double)ag.getQualityOfService()/(5*(double)ag.getParticipantNumber())));
                       departments.setTurn(((double)ag.getTurnaroundTime()/(5*(double)ag.getParticipantNumber())));
                       
                       departmentRatings.add(departments);
                   }
               }
               if(!isMonthRecordExist)
               {
                    for(String s : departmentLists)
                    {
                        DepartmentRatings departments = new DepartmentRatings();
                        departments.setDepartment(s);
                        departments.setScore(0);
                        departmentRatings.add(departments);
                    }
               }
               aggregate.setDepartmentRatings(departmentRatings);
               aggregateView.add(aggregate);
       }
       return aggregateView;
   }
   
   public boolean verifyPassword(String password, String hashedPassword){
       BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), hashedPassword);
       return result.verified;
   }
   
   public String generateHashedPassword(String password){
       String hashedPword = BCrypt.withDefaults().hashToString(12, password.toCharArray());
       return hashedPword;
   }
   
   public String errorString(HttpServletRequest request)
           
   {
       String checkIndicators = checkForAllIndicators(request);
       if(!checkIndicators.isEmpty())
       {
           return checkIndicators;
       }
       
       
       String s="";
       int count = 0;
       
       if(!request.getParameter("treasury").isEmpty() && !"0".equals(request.getParameter("treasury")))
           count++;
       if(!request.getParameter("ce").isEmpty() && !"0".equals(request.getParameter("ce")))
           count++;
       if(!request.getParameter("it").isEmpty() && !"0".equals(request.getParameter("it")))
           count++;
       if(!request.getParameter("finance").isEmpty() && !"0".equals(request.getParameter("finance")))
           count++;
       if(!request.getParameter("client").isEmpty() && !"0".equals(request.getParameter("client")))
           count++;
       if(!request.getParameter("mcc").isEmpty() && !"0".equals(request.getParameter("mcc")))
           count++;
       if(!request.getParameter("hr").isEmpty() && !"0".equals(request.getParameter("hr")))
           count++;
       if(!request.getParameter("anch_ops").isEmpty() && !"0".equals(request.getParameter("anch_ops")))
           count++;
       if(!request.getParameter("fx_ops").isEmpty() && !"0".equals(request.getParameter("fx_ops")))
           count++;
       if(!request.getParameter("try_ops").isEmpty() && !"0".equals(request.getParameter("try_ops")))
           count++;
       if(!request.getParameter("mfb_ops").isEmpty() && !"0".equals(request.getParameter("mfb_ops")))
           count++;
       if(!request.getParameter("resource").isEmpty() && !"0".equals(request.getParameter("resource")))
           count++;
       if(!request.getParameter("legal").isEmpty() && !"0".equals(request.getParameter("legal")))
           count++;
       if(!request.getParameter("exco").isEmpty() && !"0".equals(request.getParameter("exco")))
           count++;
       
        if(count < 6)
        {
           return "Please you have to rate at least six (6) Departments"; 
        }
       return s;
   }
   
   private String checkForAllIndicators(HttpServletRequest request)
   {
       if(!request.getParameter("treasury").isEmpty() && !"0".equals(request.getParameter("treasury")))
       {
           
          if(request.getParameter("access_treasury")==null || "0".equals(request.getParameter("access_treasury")))
            {
                return "Please kindly rate Treasury for ACCESSIBILITY\r\n "+request.getParameter("treasury");
            }
            if(request.getParameter("qos_treasury")==null || "0".equals(request.getParameter("qos_treasury")))
            {
                return "Please kindly rate Treasury for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_treasury")==null || "0".equals(request.getParameter("turn_treasury")))
            {
                return "Please kindly rate Treasury for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("turn_treasury")==null || "".equals(request.getParameter("turn_treasury")))
            {
                return "Please kindly comment on Treasury\r\n";
            }
       }
       if(!request.getParameter("ce").isEmpty() && !"0".equals(request.getParameter("ce")))
       {
           
          if(request.getParameter("access_ce")==null || "0".equals(request.getParameter("access_ce")))
            {
                return "Please kindly rate Strategy for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_ce")==null || "0".equals(request.getParameter("qos_ce")))
            {
                return "Please kindly rate Strategy for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_ce")==null || "0".equals(request.getParameter("turn_ce")))
            {
                return "Please kindly rate Strategy for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_ce")==null || "".equals(request.getParameter("comments_ce")))
            {
                return "Please kindly comment on Strategy\r\n";
            }
       }
       
       if(!request.getParameter("legal").isEmpty() && !"0".equals(request.getParameter("legal")))
       {
           
          if(request.getParameter("access_legal")==null || "0".equals(request.getParameter("access_legal")))
            {
                return "Please kindly rate Legal for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_legal")==null || "0".equals(request.getParameter("qos_legal")))
            {
                return "Please kindly rate Legal for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_legal")==null || "0".equals(request.getParameter("turn_legal")))
            {
                return "Please kindly rate Legal for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_legal")==null || "".equals(request.getParameter("comments_legal")))
            {
                return "Please kindly comment on Legal\r\n";
            }
       }
       
       
       
       if(!request.getParameter("it").isEmpty() && !"0".equals(request.getParameter("it")))
       {
           
          if(request.getParameter("access_it")==null || "0".equals(request.getParameter("access_it")))
            {
                return "Please kindly rate Information Technology for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_it")==null || "0".equals(request.getParameter("qos_it")))
            {
                return "Please kindly rate Information Technology for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_it")==null || "0".equals(request.getParameter("turn_it")))
            {
                return "Please kindly rate Information Technology for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_it")==null || "".equals(request.getParameter("comments_it")))
            {
                return "Please kindly comment on Information Technology\r\n";
            }
       }
       
       if(!request.getParameter("client").isEmpty() && !"0".equals(request.getParameter("client")))
       {
           
          if(request.getParameter("access_client")==null || "0".equals(request.getParameter("access_client")))
            {
                return "Please kindly rate Client Experience for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_client")==null || "0".equals(request.getParameter("qos_client")))
            {
                return "Please kindly rate Client Experience for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_client")==null || "0".equals(request.getParameter("turn_client")))
            {
                return "Please kindly rate Client Experience for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_client")==null || "".equals(request.getParameter("comments_client")))
            {
                return "Please kindly comment on Client Experience\r\n";
            }
       }
       
       if(!request.getParameter("exco").isEmpty() && !"0".equals(request.getParameter("exco")))
       {
           
          if(request.getParameter("access_exco")==null || "0".equals(request.getParameter("access_exco")))
            {
                return "Please kindly rate Exeecutive Office for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_exco")==null || "0".equals(request.getParameter("qos_exco")))
            {
                return "Please kindly rate Exeecutive Office for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_exco")==null || "0".equals(request.getParameter("turn_exco")))
            {
                return "Please kindly rate Exeecutive Office for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_exco")==null || "".equals(request.getParameter("comments_exco")))
            {
                return "Please kindly comment on Exeecutive Office\r\n";
            }
       }
       
        if(!request.getParameter("hr").isEmpty() && !"0".equals(request.getParameter("hr")))
       {
           
          if(request.getParameter("access_hr")==null || "0".equals(request.getParameter("access_hr")))
            {
                return "Please kindly rate Human Resource for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_hr")==null || "0".equals(request.getParameter("qos_hr")))
            {
                return "Please kindly rate Human Resource for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_hr")==null || "0".equals(request.getParameter("turn_hr")))
            {
                return "Please kindly rate Human Resource for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_hr")==null || "".equals(request.getParameter("comments_hr")))
            {
                return "Please kindly comment on Human Resource\r\n";
            }
       }
        
        if(!request.getParameter("finance").isEmpty() && !"0".equals(request.getParameter("finance")))
       {
           
          if(request.getParameter("access_finance")==null || "0".equals(request.getParameter("access_finance")))
            {
                return "Please kindly rate Finance for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_finance")==null || "0".equals(request.getParameter("qos_finance")))
            {
                return "Please kindly rate Finance for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_finance")==null || "0".equals(request.getParameter("turn_finance")))
            {
                return "Please kindly rate Finance for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_finance")==null || "".equals(request.getParameter("comments_finance")))
            {
                return "Please kindly comment on Finance\r\n";
            }
       }
        
        if(!request.getParameter("mcc").isEmpty() && !"0".equals(request.getParameter("mcc")))
       {
           
          if(request.getParameter("access_mcc")==null || "0".equals(request.getParameter("access_mcc")))
            {
                return "Please kindly rate Marketing & Corporate Communications for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_mcc")==null || "0".equals(request.getParameter("qos_mcc")))
            {
                return "Please kindly rate Marketing & Corporate Communications for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_mcc")==null || "0".equals(request.getParameter("turn_mcc")))
            {
                return "Please kindly rate Marketing & Corporate Communications for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_mcc")==null || "".equals(request.getParameter("comments_mcc")))
            {
                return "Please kindly comment on Marketing & Corporate Communications\r\n";
            }
       }
        
        if(!request.getParameter("anch_ops").isEmpty() && !"0".equals(request.getParameter("anch_ops")))
       {
           
          if(request.getParameter("access_anch_ops")==null || "0".equals(request.getParameter("access_anch_ops")))
            {
                return "Please kindly rate Anchoria Operations for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_anch_ops")==null || "0".equals(request.getParameter("qos_anch_ops")))
            {
                return "Please kindly rate Anchoria Operations for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_anch_ops")==null || "0".equals(request.getParameter("turn_anch_ops")))
            {
                return "Please kindly rate Anchoria Operations for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_anch_ops")==null || "".equals(request.getParameter("comments_anch_ops")))
            {
                return "Please kindly comment on Anchoria Operations\r\n";
            }
       }
        
        if(!request.getParameter("fx_ops").isEmpty() && !"0".equals(request.getParameter("fx_ops")))
       {
           
          if(request.getParameter("access_fx_ops")==null || "0".equals(request.getParameter("access_fx_ops")))
            {
                return "Please kindly rate FX Operations for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_fx_ops")==null || "0".equals(request.getParameter("qos_fx_ops")))
            {
                return "Please kindly rate FX Operations for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_fx_ops")==null || "0".equals(request.getParameter("turn_fx_ops")))
            {
                return "Please kindly rate FX Operations for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_fx_ops")==null || "".equals(request.getParameter("comments_fx_ops")))
            {
                return "Please kindly comment on FX Operations\r\n";
            }
       }
        
        if(!request.getParameter("mfb_ops").isEmpty() && !"0".equals(request.getParameter("mfb_ops")))
       {
           
          if(request.getParameter("access_mfb_ops")==null || "0".equals(request.getParameter("access_mfb_ops")))
            {
                return "Please kindly rate MFB Operations for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_mfb_ops")==null || "0".equals(request.getParameter("qos_mfb_ops")))
            {
                return "Please kindly rate MFB Operations for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_mfb_ops")==null  || "0".equals(request.getParameter("turn_mfb_ops")))
            {
                return "Please kindly rate MFB Operations for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_mfb_ops")==null || "".equals(request.getParameter("comments_mfb_ops")))
            {
                return "Please kindly comment on MFB Operations\r\n";
            }
       }
        
        if(!request.getParameter("try_ops").isEmpty() && !"0".equals(request.getParameter("try_ops")))
       {
           
          if(request.getParameter("access_try_ops")==null || "0".equals(request.getParameter("access_try_ops")))
            {
                return "Please kindly rate Treasury Operations for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_try_ops")==null || "0".equals(request.getParameter("qos_try_ops")))
            {
                return "Please kindly rate Treasury Operations for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_try_ops")==null || "0".equals(request.getParameter("turn_try_ops")))
            {
                return "Please kindly rate Treasury Operations for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_try_ops")==null || "".equals(request.getParameter("comments_try_ops")))
            {
                return "Please kindly comment on Treasury Operations\r\n";
            }
       }
        
        if(!request.getParameter("resource").isEmpty() && !"0".equals(request.getParameter("resource")))
       {
           
          if(request.getParameter("access_resource")==null || "0".equals(request.getParameter("access_try_ops")))
            {
                return "Please kindly rate Resource/Admin for ACCESSIBILITY\r\n";
            }
            if(request.getParameter("qos_resource")==null || "0".equals(request.getParameter("qos_resource")))
            {
                return "Please kindly rate Resource/Admin for QUALITY OF SERVICE\r\n";
            }
            if(request.getParameter("turn_resource")==null || "0".equals(request.getParameter("turn_resource")))
            {
                return "Please kindly rate Resource/Admin for TURN AROUND TIME/RESOLUTION\r\n";
            }
            if(request.getParameter("comments_resource")==null || "".equals(request.getParameter("comments_resource")))
            {
                return "Please kindly comment on Resource/Admin\r\n";
            }
       }
        
        
       return "";
   }
   @Async
   public void sendResetLink(resetModel resetData)
   {
        try {
            String url = "https://anchoriaam.com/loanapp/public/api/ratingsapp/resetpassword";
            RestTemplate restTemplate = new RestTemplate();
            HttpHeaders header = new HttpHeaders();
            header.setContentType(MediaType.APPLICATION_JSON);
            ObjectMapper objectMapper = new ObjectMapper();
            HttpEntity<String> requestEntity = new HttpEntity<>(objectMapper.writeValueAsString(resetData), header);
            restTemplate.postForObject(url, requestEntity, String.class);
            
//       header.setOrigin("*");
//       header.setAllow("*");
        } catch (JsonProcessingException ex) {
            Logger.getLogger(General.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
   
   public String generateToken(String email, String uuid)
   {
       String concatenatedToken = email+":"+uuid;
       return new String(Base64.encodeBase64(concatenatedToken.getBytes()));
   }
   
   public ArrayList<String> decodeToken(String token)
   {
       String [] tokenize = new String(Base64.decodeBase64(token)).split(":");
       ArrayList<String> decodedString = new ArrayList<>();
       decodedString.addAll(Arrays.asList(tokenize));
       return decodedString;
   }
}
 