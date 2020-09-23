<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*, javax.naming.*, javax.sql.DataSource,java.util.*"  session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> VFD GROUP-Departments Rating System</title>
        <link rel="shortcut icon" href="<spring:url value="/resources/img/favicon.ico"/>"
              <!--STYLESHEET-->
              <!--=================================================-->
              <!--Roboto Slab Font [ OPTIONAL ] -->
              <link href="http://fonts.googleapis.com/css?family=Helvetica:400,300,100,700" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Helvetica:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet">
        <!--Bootstrap Stylesheet [ REQUIRED ]-->
        <link href="<spring:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <!--Jasmine Stylesheet [ REQUIRED ]-->
        <link href="<spring:url value="/resources/css/style.css"/>" rel="stylesheet">
        <!--Font Awesome [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
        <!--Switchery [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/switchery/switchery.min.css"/>" rel="stylesheet">
        <!--Bootstrap Select [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/bootstrap-select/bootstrap-select.min.css"/>" rel="stylesheet">
        <!--Bootstrap Validator [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/bootstrap-validator/bootstrapValidator.min.css"/>" rel="stylesheet">
        <!--jVector Map [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/jvectormap/jquery-jvectormap.css"/>" rel="stylesheet">
        <!--Morris.js [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/morris-js/morris.min.css"/>" rel="stylesheet">
        <!--Bootstrap Table [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/datatables/media/css/dataTables.bootstrap.css"/>" rel="stylesheet">
        <link href="<spring:url value="/resources/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css"/>" rel="stylesheet">
        <!--Demo [ DEMONSTRATION ]-->
        <link href="<spring:url value="/resources/css/demo/jquery-steps.min.css"/>" rel="stylesheet">
        <!--Demo [ DEMONSTRATION ]-->
        <link href="<spring:url value="/resources/css/demo/jasmine.css"/>" rel="stylesheet">
        <style>
            .checked {
                color: orange;
            }
            .pageheader{
                background-image: url("resources/img/head.png"); 
                
                

            } 
            img {
                margin-top: 60px;
            }
            .menu-title:hover{
                color: red;
            }
            
            .custom{
                width: 100% !important;
            }
          
        </style>
        <!--SCRIPT-->
        <!--=================================================-->
        <!--Page Load Progress Bar [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/pace/pace.min.css"/>" rel="stylesheet">
        <script src="<spring:url value="/resources/plugins/pace/pace.min.js"/>"></script>
    </head>
    <!--TIPS-->
    <!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

    <body>
        <div id="container" class="effect mainnav-lg navbar-fixed mainnav-fixed">
            <header id="navbar">
                <div id="navbar-container" class="boxed">
                    <div class="navbar-content clearfix">
                    <ul class=" nav navbar-top-links pull-left">
                            <li class="tgl-menu-btn">
                                <a class="mainnav-toggle" href="#"><i class="fa fa-navicon fa-lg"></i></a>
                            </li>
                            
                        </ul>
                        <ul class="nav navbar-top-links pull-right">

                            <!--User dropdown-->
                            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                            <li id="dropdown-user" class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">
                                    <span class="pull-right"></span>
                                    <div class="username hidden-xs">${user.name}</div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right with-arrow">
                                    <!-- User dropdown menu -->
                                    <ul class="head-list">
                                        <li>
                                            <a href="logout"><strong> <i class="fa fa-power-off"></i> Logout </strong></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                            <!--End user dropdown-->
                        </ul>
                                
                    </div>

                </div>
            </header>
            <!--===================================================-->
            <!--END NAVBAR-->
            <div class="boxed">
                <!--CONTENT CONTAINER-->
                <!--===================================================-->
                <div id="content-container">
                    <!--Page Title-->
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <div class="pageheader hidden-xs">
                        <h3 style="color:white"><i class="fa fa-home"></i>Dashboard</h3>
                        <div class="breadcrumb-wrapper" style="color:white">
                            <span class="label" style="color:white">Welcome:</span>
                            <ol class="breadcrumb" style="color:white">
                                <li>  ${user.name} </li>

                            </ol>
                        </div>
                    </div>
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <!--End page title-->
                    <!--Page content-->
                    <!--===================================================-->
                    
           <div class="container">
                     
            <div class="form-group">
                <div class="col-md-2" ></div>
                            <div class="col-md-4" >
                               <a class="btn btn-success btn-lg custom" href="rating" role="button">
                                Rate Departments for the Month
                               </a>
                            </div>
                
                     <div class="col-md-4" >
                         <c:if test="${isAdmin}">
                             <a href="ratehistory">
                    <button type="button" class="btn btn-danger btn-lg custom"> &nbsp; View Ratings</button>
                
                         </a>
                           </c:if>  
                    </div>
                    
                      <div class="col-md-2"></div>
                    
            </div>
                    
                     
                    </div>   
                         
                    <div>&nbsp;</div>
                    <div>&nbsp;</div>
                    <div>&nbsp;</div>
                    
             <div class="container">
                 <div class="row">
                     <c:forEach var="ratingStructure" items="${aggregateStructure}">
                        <div class="col-sm-4 col-xs-12">
                        
                                   <table class="table table-hover">
                                    <thead class="thead-dark">
                                      <tr>
                                        <th><h4><strong><center>${ratingStructure.month} ${ratingStructure.year}</center></strong> </h4></th>
                                        
                                      </tr>
                                      
                                      <th>Department</th>
                                      <th>Score</th> 
                                      </thead>
                                    
                                    <tbody>
                                        
                                        <c:forEach var="departmentRatings" items="${ratingStructure.departmentRatings}"> 
                                      <tr >
                                        <td><h5 class="text-left">${departmentRatings.department}</h5></td>
                                      
                                         <td><fmt:formatNumber type = "percent" value ="${departmentRatings.score}"/></td>
                                      </tr>
                                        </c:forEach>
                                     
                                    </tbody>
                                  </table>
                       
                         </div>           
                      </c:forEach>
                        
                </div>    
                </div> 
                 <div class="row">
                     <div class="col-md-12">
                        

                         <div>&nbsp;</div>
                    <div>&nbsp;</div>
                    <div>&nbsp;</div>
                   
                    <div>&nbsp;</div>
                               
        <div class="row">
                <div class="col-lg-12">
                      <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title">CURRENT MONTH RATINGS: <strong>${ratings[0].month} ${ratings[0].year}</strong></h3>
                </div>           
                
                      </div>
                                        <div class="panel-body">
                                            <table id="demo-dt-delete" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>DEPARTMENT</th>
                                                        <th>RATING POINTS</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="rating" items="${ratings}">
                                                        <tr>
                                                            <td>${rating.department}</td>
                                                            <td>
                                                                <c:forEach var="i" begin="1" end="${rating.rateNumber}">
                                                                    <span class="fa fa-star checked"></span>
                                                                </c:forEach>
                                                                <c:forEach var="j" begin="1" end="${5-rating.rateNumber}">
                                                                    <span class="fa fa-star"></span>
                                                                </c:forEach>
                                                                <span class="badge badge-secondary" data-toggle="tooltip" data-placement="top" title="comment">${rating.comment}</span>
                                                            </td>


                                                        </tr>

                                                    </c:forEach>



                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!--===================================================-->
                                    <!-- End Row selection and deletion (multiple rows) -->

                                </div>
                            </div>
                        </div>
                        <!--===================================================-->
                        <!--End page content-->
                    </div>
                    <!--===================================================-->
                    <!--END CONTENT CONTAINER-->
                    <!--MAIN NAVIGATION-->
                    <!--===================================================-->
                    <nav id="mainnav-container">
                        <div class="navbar-header">

                        </div>

                        <div id="mainnav">
                            <div id="mainnav-menu-wrap">
                                <div class="nano">
                                    <div class="nano-content">
                                        <ul id="mainnav-menu" class="list-group">
                                            <!--Category name-->
                                            <center>
                                                <img src="<c:url value='/resources/img/vfd harp.png'/>" width="100" height="90">
                                            </center>
                                            <li class="list-header">Navigation</li>
                                            <!--Menu list item-->
                                            <li class="menu-body active">
                                                <a href="dashboard">
                                                    <i class="fa fa-home"></i>
                                                    <span class="menu-title">Dashboard</span>

                                                </a>
                                            </li>
                                            <!--Category name-->
                                            <!--<li class="list-header">DEPARTMENTS RATING</li>-->
                                            <!--Menu list item-->
                                            <c:if test="${isAdmin}">
                                                <li class="menu-body">
                                                    <a href="performancelist">
                                                        <i class="fa fa-list"></i>
                                                        <span class="menu-title">Performance List</span>

                                                    </a>

                                                </li>

                                                <li class="menu-body">
                                                    <a href="activate-rating">
                                                        <i class="fa fa-power-off"></i>
                                                        <span class="menu-title">Activate Rating</span>

                                                    </a>

                                                </li>
                                            </c:if>

                                            <li class="menu-body">
                                                <a href="rating">
                                                    <i class="fa fa-star"></i>
                                                    <span class="menu-title">Rate Here</span>

                                                </a>

                                            </li>
                                            <!--Menu list item-->
                                            <li class="menu-body">
                                                <a href="ratehistory">
                                                    <i class="fa fa-history"></i>
                                                    <span class="menu-title">History</span>

                                                </a>

                                            </li>

                                    </div>
                                </div>
                            </div>
                            <!--==============================-->
                            <!--End menu-->
                        </div>
                    </nav>
                    <!--===================================================-->
                    <!--END MAIN NAVIGATION-->
                </div>
                <!-- FOOTER -->
                <!--===================================================-->
                <footer id="footer">
                    <!-- Visible when footer positions are fixed -->
                    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                    <div class="show-fixed pull-right">
                        <ul class="footer-list list-inline">
                            <li>
                                <p class="text-sm">SEO Proggres</p>
                                <div class="progress progress-sm progress-light-base">
                                    <div style="width: 80%" class="progress-bar progress-bar-danger"></div>
                                </div>
                            </li>
                            <li>
                                <p class="text-sm">Online Tutorial</p>
                                <div class="progress progress-sm progress-light-base">
                                    <div style="width: 80%" class="progress-bar progress-bar-primary"></div>
                                </div>
                            </li>
                            <li>
                                <button class="btn btn-sm btn-dark btn-active-success">Checkout</button>
                            </li>
                        </ul>
                    </div>
                    <!-- Visible when footer positions are static -->
                    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                    <div class="hide-fixed pull-right pad-rgt">Departments Rating System</div>
                    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                    <!-- Remove the class name "show-fixed" and "hide-fixed" to make the content always appears. -->
                    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                    <p class="pad-lft">&#0169; 2018 VFD GROUP</p>
                </footer>
                <!--===================================================-->
                <!-- END FOOTER -->
                <!-- SCROLL TOP BUTTON -->
                <!--===================================================-->
                <button id="scroll-top" class="btn"><i class="fa fa-chevron-up"></i></button>
                <!--===================================================-->
            </div>
            <!--===================================================-->
            <!-- END OF CONTAINER -->
            <!--JAVASCRIPT-->
            <!--=================================================-->
            <!--jQuery [ REQUIRED ]-->
            <script src="<spring:url value="/resources/js/jquery-3.4.0.min.js"/>"></script>
            <!--BootstrapJS [ RECOMMENDED ]-->
            <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
            <!--Fast Click [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/fast-click/fastclick.min.js"/>"></script>
            <!--Jquery Nano Scroller js [ REQUIRED ]-->
            <script src="<spring:url value="/resources/plugins/nanoscrollerjs/jquery.nanoscroller.min.js"/>"></script>
            <!--Metismenu js [ REQUIRED ]-->
            <script src="<spring:url value="/resources/plugins/metismenu/metismenu.min.js"/>"></script>
            <!--Switchery [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/switchery/switchery.min.js"/>"></script>
            <!--Jquery Steps [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/parsley/parsley.min.js"/>"></script>
            <!--Jquery Steps [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/jquery-steps/jquery-steps.min.js"/>"></script>
            <!--Bootstrap Select [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>
            <!--Bootstrap Wizard [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/bootstrap-wizard/jquery.bootstrap.wizard.min.js"/>"></script>
            <!--Masked Input [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/masked-input/bootstrap-inputmask.min.js"/>"></script>
            <!--Bootstrap Validator [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/bootstrap-validator/bootstrapValidator.min.js"/>"></script>
            <!--Flot Chart [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/flot-charts/jquery.flot.min.js"/>"></script>
            <script src="<spring:url value="/resources/plugins/flot-charts/jquery.flot.resize.min.js"/>"></script>
            <script src="<spring:url value="/resources/plugins/flot-charts/jquery.flot.spline.js"/>"></script>
            <script src="<spring:url value="/resources/plugins/moment/moment.min.js"/>"></script>
            <script src="<spring:url value="/resources/plugins/moment-range/moment-range.js"/>"></script>
            <script src="<spring:url value="/resources/plugins/flot-charts/jquery.flot.tooltip.min.js"/>"></script>
            <!--Flot Order Bars Chart [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/flot-charts/jquery.flot.categories.js"/>"></script>
            <!--DataTables [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/datatables/media/js/jquery.dataTables.js"/>"></script>
            <script src="<spring:url value="/resources/plugins/datatables/media/js/dataTables.bootstrap.js"/>"></script>
            <script src="<spring:url value="/resources/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"/>"></script>
            <!--Morris.js [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/morris-js/morris.min.js"/>"></script>
            <script src="<spring:url value="/resources/plugins/morris-js/raphael-js/raphael.min.js"/>"></script>
            <!--Easy Pie Chart [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/easy-pie-chart/jquery.easypiechart.min.js"/>"></script>
            <!--Fullscreen jQuery [ OPTIONAL ]-->
            <script src="<spring:url value="/resources/plugins/screenfull/screenfull.js"/>"></script>
            <!--Form Wizard [ SAMPLE ]-->
            <script src="<spring:url value="/resources/js/demo/index.js"/>"></script>
            <!--Form Wizard [ SAMPLE ]-->
            <script src="<spring:url value="/resources/js/demo/wizard.js"/>"></script>
            <!--Form Wizard [ SAMPLE ]-->
            <script src="<spring:url value="/resources/js/demo/form-wizard.js"/>"></script>
            <!--DataTables Sample [ SAMPLE ]-->
            <script src="<spring:url value="/resources/js/demo/tables-datatables.js"/>"></script>
            <!--Jasmine Admin [ RECOMMENDED ]-->
            <script src="<spring:url value="/resources/js/scripts.js"/>"></script>
        </div>
    </body>
</html>