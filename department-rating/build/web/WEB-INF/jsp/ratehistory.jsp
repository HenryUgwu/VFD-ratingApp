<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> VFD GROUP-Departments Rating System</title>
    <link rel="shortcut icon" href="<spring:url value="/resources/img/favicon.ico"/>"
    <!--STYLESHEET-->
    <!--=================================================-->
    <!--Roboto Slab Font [ OPTIONAL ] -->
    <link href="http://fonts.googleapis.com/css?family=Helvetica:400,300,100,700" rel="stylesheet"/>
    <link href="http://fonts.googleapis.com/css?family=Helvetica:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet"/>
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
    <!--SCRIPT-->
    <!--=================================================-->
    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="<spring:url value="/resources/plugins/pace/pace.min.css"/>" rel="stylesheet">
        <style>
        .checked {
            color: orange;
}
.pageheader{
                background-image: url("resources/img/head.png");
                background-size: cover;

            } 
            .menu-title:hover{
                color: red;
            }

    </style>
    <script src="<spring:url value="/resources/plugins/pace/pace.min.js"/>"></script>
</head>
<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body>
  <div id="container" class="effect mainnav-lg navbar-fixed mainnav-fixed">
    
    
        <!--NAVBAR-->
        <!--===================================================-->
        
        
        <header id="navbar">
            <div id="navbar-container" class="boxed">
               
                <div class="navbar-content clearfix">
                
                
                    <ul class="nav navbar-top-links pull-left">
                        <!--Navigation toogle button-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li class="tgl-menu-btn">
                            <a class="mainnav-toggle" href="#"> <i class="fa fa-navicon fa-lg"></i> </a>
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End Navigation toogle button-->
                                                    
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End notifications dropdown-->
                    </ul>
                    <ul class="nav navbar-top-links pull-right">
                        <!--Fullscreen toogle button-->
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <li class="hidden-xs" id="toggleFullscreen">
                            
                            </a>
                        </li>
                        <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                        <!--End Fullscreen toogle button-->
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
                <!--================================-->
                <!--End Navbar Dropdown-->
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
                  <h3 style="color:white"><i class="fa fa-history"></i>History</h3>
                    <div class="breadcrumb-wrapper">
                      <span class="label" style="color:white">Welcome:</span>
                         <ol class="breadcrumb"style="color:white">
                             <li>  ${user.name} </li>
                            
                         </ol>
                    </div>
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->
                <!--Page content-->
                <!--===================================================-->
                <div id="page-content">
                    <div class="row">
                        
                    </div>
                </div>
                       
                           
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel">
                                    <div class="panel-body np">
                                        <!--Default Tabs (Left Aligned)--> 
                                        <!--===================================================-->
                                        <div class="tab-base mar-no">
                                            <!--Nav Tabs-->
                                           
                                            
                                            <!--Tabs Content-->
                                            <div class="tab-content">
                                                <div id="demo-lft-tab-1" class="tab-pane fade active in">
                                                    <!--Hover Rows--> 
                                                    <!--===================================================-->
                                                   
                                                                    
                                                </div>
                                                <!--===================================================-->
                                                <!--End Hover Rows-->
                                                <div id="demo-lft-tab-3" class="tab-pane fade">
                                                    <!--Hover Rows--> 
                                                    <!--===================================================-->
                                                    
                                        <!--===================================================--> 
                                        <!--End Hover Rows--> 
                                    </div>
                                </div>
                            </div>
                        </div>

                                    
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Row selection and deletion (multiple rows) -->
                            <!--===================================================-->
                            <div class="panel">
                                <div class="panel-heading">
                                    <h3 class="panel-title"> HISTORY OF RATINGS</h3>
                                </div>
                                
                                </div>
                                <div class="panel-body">
                                    <table id="datatable" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th class="not-search-orderable">SN</th>
                                                <th>DEPARTMENT</th>
                                                <th>RATING POINTS</th>
                                                <th>MONTH</th>
                                                <th>YEAR</th>
                                                <th>COMMENTS </th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="rating" items="${allRatings}">
                                                <tr>
                                                    <td></td>
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
                                                    <td>${rating.month}</td>
                                                    <td>${rating.year}</td>
                                                    <td>${rating.comment}</td>
                                                
                                                </tr>
 
                                            </c:forEach>
                                                
                                            
                                            
                                        </tbody>
                                    </table>
                                   
                                </div>
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
                    <!--Brand logo & name-->
                    <!--================================-->
                    <div class="navbar-header">
                        <a href="dashboard" class="navbar-brand">
                            
                        </a>
                    </div>
                    <!--================================-->
                    <!--End brand logo & name-->
                <div id="mainnav">
                    <!--Menu-->
                    <!--================================-->
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
                                    <li class="menu-body">
                                        <a href="dashboard">
                                            <i class="fa fa-home"></i>
                                            <span class="menu-title">Dashboard</span>
                                            
                                        </a>
                                    </li>
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
                          
                                    <li class="menu-body active">
                                        <a href="ratehistory">
                                            <i class="fa fa-history"></i>
                                            <span class="menu-title">History</span>
                                           
                                        </a>
                                        
                                    </li>  
                                   
                                <!--End widget-->
                            </div>
                        </div>
                    </div>
                    <!--================================-->
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
            <div class="hide-fixed pull-right pad-rgt">Departments Rating</div>
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
    <script src="<spring:url value="/resources/js/jquery-2.1.1.min.js"/>"></script>
    <script src="<spring:url value="/resources/js/jquery-3.4.0.min.js"/>"></script>
    <script src="<spring:url value="/resources/js/jquery-ui.min.js"/>"></script>
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
    <script src="<spring:url value="/resources/plugins/bootstrap-select/bootstrap-select.min.js"/>"> </script>
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
    
    <script src="<spring:url value="/resources/js/custom/ratehistory.js"/>"></script>
    

   
</div>
</body>

</html>