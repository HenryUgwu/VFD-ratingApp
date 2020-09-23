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
    <link href="http://fonts.googleapis.com/css?family=calibri:400,300,100,700" rel="stylesheet"/>
    <link href="http://fonts.googleapis.com/css?family=calibri:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet"/>
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
            .border-expand {
                border-style: solid;
                border-width:5px;
            }
            .star-rating-general {
                line-height:30px;
                font-size:1.5em;
              }

              .star-rating-general .fa-star{color:#337ab7;}
              
              .pageheader{
                background-image: url("resources/img/head.png");
                background-size: cover;

            } 
            .menu-title:hover{
                color: red;
            }
            textarea.form-control{
                height: 100px;
            }
            .fa{
                cursor: pointer;
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
                                <span class="pull-right"> </span>
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
                  <h3 style="color:white"><i class="fa fa-star"></i>Rating</h3>
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
                                    <h3 class="panel-title"> DEPARTMENTS RATING FOR ${month}, ${year}</h3>
                                </div>
                                
                                </div>
                                <div class="panel-body">
                                    <c:choose>
                                        <c:when test="${isActivated}">
                                            <c:choose>
                                                <c:when test="${isRatingDone}">
                                                    <c:choose>
                                                        <c:when test="${fn:length(successMessage) gt 0}">
                                                            <div class="alert alert-success text-center" role="alert">
                                                                <strong>${successMessage}</strong>
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <div class="alert alert-info text-center" role="alert">
                                                                <strong> Dear, ${user.name}<br>Your Rating is Already Done!!!</strong>
                                                            </div>
                                                        </c:otherwise>
                                                            
                                                    </c:choose>
                                                    
                                                </c:when>
                                                <c:otherwise>
                                                    <!-- rating form here -->
                                                    <form action="rating" method="POST" role="form" modelAttributes="ratingModel" onsubmit="return false" >
                                                        <input type="text" hidden="true" name="month" value="${month}" path="month"/>
                                                        <input type="text" hidden="true" name="year" value="${year}" path="year"/>
                                                        <c:if test="${fn:length(errorMessage) gt 0}">
                                                            <div class="alert alert-danger text-center has-error" role="alert">
                                                                <strong>${errorMessage}</strong>
                                                            </div>
                                                        </c:if>
                                             <table id="demo-dt-delete" class="table table-responsive table-striped table-bordered table-xs">
                                                        <thead>
                                                            <tr>
                                                                <th>DEPARTMENT</th>
                                                                <th>RATINGS CRITERIA</th>
                                                                <th>AVERAGE RATINGS</th>
                                                                <th class="min-desktop">COMMENTS FOR IMPROVEMENTS</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                             <tr>
                                                                <td><h5>TREASURY</h5></td>
                                                                <td>
                                                                   <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                                                        <div class="panel panel-primary">
                                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                                                           <div class="panel-heading" role="tab" id="heading1">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-treasury-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_treasury" id="access_treasury" name="access_treasury" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                                                            <div class="panel-heading" role="tab" id="heading2">
                                                                                <h4 class="panel-title">
                                                                                      Quality of service
                                                                                   <span class="caret"></span> 
                                                                                </h4>
                                                                            </div>
                                                                               </a>
                                                                            <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
                                                                                <div class="panel-body">
                                                                            <p>
                                                                            <div class="star-rating-treasury-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_treasury" id="qos_treasury" name="qos_treasury" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                             <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
                                                                             <div class="panel-heading" role="tab" id="heading3">
                                                                                <h4 class="panel-title">
                                                                                     Turnaround time and  resolutions
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                               </a>
                                                                            <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
                                                                                <div class="panel-body">
                                                                            <p>
                                                                           <div class="star-rating-treasury-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_treasury" id="turn_treasury" name="turn_treasury" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>    
                                                            
                                                               
                                                                          </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-treasury star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="treasury" id="treasury" name="treasury" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_treasury" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td><textarea placeholder="comments" path="comments_treasury" name="comments_treasury"  rows="2" class="form-control" path="comment_treasury"></textarea>
                                                                    
                                                                    </td>

                                                            </tr>
                                                            
                                                            </tr>
                                                            <tr>
                                                                <td><h5>STRATEGY</h5></td>
                                                                <td>
                                                                       
                                                                    <div class="panel-group" id="accordion1" role="tablist" aria-multiselectable="true">
                                                                            <div class="panel panel-primary">
                                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
                                                                                <div class="panel-heading" role="tab" id="heading4">
                                                                                    <h4 class="panel-title">
                                                                                           Accessibility for enquiries / complaints
                                                                                       <span class="caret"></span>
                                                                                    </h4>
                                                                                </div>
                                                                                </a>
                                                                                <div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
                                                                                    <div class="panel-body">
                                                                                        <p>
                                                                          <div class="star-rating-ce-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_ce" id="access_ce" name="access_ce" value="0">
                                                                          </div>
                                                                    
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="panel panel-primary">
                                                                                 <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
                                                                                <div class="panel-heading" role="tab" id="heading5">
                                                                                    <h4 class="panel-title">
                                                                                          Quality of service
                                                                                          <span class="caret"></span>
                                                                                    </h4>
                                                                                </div>
                                                                                      </a>
                                                                                <div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading5">
                                                                                    <div class="panel-body">
                                                                                        <p>
                                                                           <div class="star-rating-ce-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_ce" id="qos_ce" name="qos_ce" value="0">
                                                                          </div>
                                                                    
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="panel panel-primary">
                                                                             <a class="collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
                                                                               <div class="panel-heading" role="tab" id="heading6">
                                                                                    <h4 class="panel-title">
                                                                                         Turnaround time and  resolutions
                                                                                         <span class="caret"></span>
                                                                                   </h4>
                                                                                   
                                                                                </div>
                                                                                  </a>
                                                                                <div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading6">
                                                                                    <div class="panel-body">
                                                                                        <p>
                                                                           <div class="star-rating-ce-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_ce" id="turn_ce" name="turn_ce" value="0">
                                                                          </div>
                                                                    
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                <td>
                                                                    <div class="star-rating-ce star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="ce" id="ce" name="ce" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_ce" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td><textarea placeholder="comments" rows="2" class="form-control" name="comments_ce" path="comments_ce"></textarea>
                                                                   
                                                                    </td>

                                                            </tr>
                                                            <tr>
                                                                <td><h5>LEGAL</h5></td>
                                                                <td>
                                                                     
                                                                    <div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse7" aria-expanded="false" aria-controls="collapse7">
                                                                            <div class="panel-heading" role="tab" id="heading7">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                                <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                                </a>
                                                                            <div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading7">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-leg-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_legal" id="access_legal" name="access_legal" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse8" aria-expanded="false" aria-controls="collapse8">
                                                                            <div class="panel-heading" role="tab" id="heading8">
                                                                                <h4 class="panel-title">
                                                                                       Quality of service
                                                                                       <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a> 
                                                                            <div id="collapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading8">
                                                                                <div class="panel-body">
                                                                            <p>
                                                                            <div class="star-rating-leg-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_legal" id="qos_legal" name="qos_legal" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                             <a class="collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse9" aria-expanded="false" aria-controls="collapse9">
                                                                          <div class="panel-heading" role="tab" id="heading9">
                                                                                <h4 class="panel-title">
                                                                                       Turnaround time and  resolutions
                                                                                       <span class="caret"></span>
                                                                               </h4>
                                                                            </div>
                                                                            </a> 
                                                                            <div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading9">
                                                                                <div class="panel-body">
                                                                            <p>
                                                                           <div class="star-rating-leg-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_legal" id="turn_legal" name="turn_legal" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-leg star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="legal" id="legal" name="legal" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_legal" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>
                                                                    <td><textarea placeholder="comments" name="comments_legal" path="comments_legal" rows="2" class="form-control"></textarea>
                                                                    
                                                                    </td>

                                                            </tr>
                                                            <tr>
                                                                <td><h5>HUMAN RESOURCES</h5></td>
                                                                <td>
                                                                   <div class="panel-group" id="accordion3" role="tablist" aria-multiselectable="true">
                                                                        <div class="panel panel-primary">
                                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion3" href="#collapse10" aria-expanded="false" aria-controls="collapse10">
                                                                           <div class="panel-heading" role="tab" id="heading10">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading10">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-hr-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_hr" id="access_hr" name="access_hr" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion3" href="#collapse11" aria-expanded="false" aria-controls="collapse11">
                                                                            <div class="panel-heading" role="tab" id="heading11">
                                                                                <h4 class="panel-title">
                                                                                      Quality of service
                                                                                   <span class="caret"></span> 
                                                                                </h4>
                                                                            </div>
                                                                               </a>
                                                                            <div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
                                                                                <div class="panel-body">
                                                                            <p>
                                                                            <div class="star-rating-hr-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_hr" id="qos_hr" name="qos_hr" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                             <a class="collapsed" data-toggle="collapse" data-parent="#accordion3" href="#collapse12" aria-expanded="false" aria-controls="collapse12">
                                                                             <div class="panel-heading" role="tab" id="heading12">
                                                                                <h4 class="panel-title">
                                                                                     Turnaround time and  resolutions
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                               </a>
                                                                            <div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
                                                                                <div class="panel-body">
                                                                            <p>
                                                                           <div class="star-rating-hr-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_hr" id="turn_hr" name="turn_hr" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>    
                                                            
                                                               
                                                                          </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-hr star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="hr" id="hr" name="hr" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_hr" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td><textarea placeholder="comments" path="comments_hr" name="comments_hr"  rows="2" class="form-control" path="comment_hr"></textarea>
                                                                    
                                                                    </td>

                                                            </tr>
                                                            <tr>
                                                                <td><h5>INFORMATION TECHNOLOGY</h5></td>
                                                                <td>
                                                                    <div class="panel-group" id="accordion4" role="tablist" aria-multiselectable="true">
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion4" href="#collapse13" aria-expanded="false" aria-controls="collapse13">
                                                                           <div class="panel-heading" role="tab" id="heading13">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                                <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading13">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-it-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_it" id="access_it" name="access_it" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion4" href="#collapse14" aria-expanded="false" aria-controls="collapse14">
                                                                           <div class="panel-heading" role="tab" id="heading14">
                                                                                <h4 class="panel-title">
                                                                                      Quality of service
                                                                                      <span class="caret"></span>
                                                                                    
                                                                                </h4>
                                                                            </div>
                                                                               </a> 
                                                                            <div id="collapse14" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading14">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-it-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_it" id="qos_it" name="qos_it" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion4" href="#collapse15" aria-expanded="false" aria-controls="collapse15">
                                                                            <div class="panel-heading" role="tab" id="heading15">
                                                                                <h4 class="panel-title">
                                                                                      Turnaround time and  resolutions
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse15" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading15">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                           <div class="star-rating-it-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_it" id="turn_it" name="turn_it" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                 </td>
                                                                
                                                                <td>
                                                                     <div class="star-rating-it star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="it" id="it" name="it" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_it" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_it" rows="2" class="form-control" path="comment_it"></textarea>
                                                                  
                                                                    </td>

                                                            </tr>
                                                            <tr>
                                                                <td><h5>FINANCE<h5></td>
                                                                <td>
                                                                     <div class="panel-group" id="accordion5" role="tablist" aria-multiselectable="true">
                                                                        <div class="panel panel-primary">
                                                                          <a class="collapsed" data-toggle="collapse" data-parent="#accordion5" href="#collapse16" aria-expanded="false" aria-controls="collapse16">
                                                                           <div class="panel-heading" role="tab" id="heading16">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse16" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading16">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-fin-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_finance" id="access_finance" name="access_finance" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion5" href="#collapse17" aria-expanded="false" aria-controls="collapse17">
                                                                           <div class="panel-heading" role="tab" id="heading17">
                                                                                <h4 class="panel-title">
                                                                                     Quality of service
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                                </a>
                                                                            <div id="collapse17" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading17">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                           <div class="star-rating-fin-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_finance" id="qos_finance" name="qos_finance" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                          <a class="collapsed" data-toggle="collapse" data-parent="#accordion5" href="#collapse18" aria-expanded="false" aria-controls="collapse18">
                                                                           <div class="panel-heading" role="tab" id="heading18">
                                                                                <h4 class="panel-title">
                                                                                       Turnaround time and  resolutions
                                                                                   <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                               </a>
                                                                            <div id="collapse18" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading18">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-fin-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_finance" id="turn_finance" name="turn_finance" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-fin star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="finance" id="finance" name="finance" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_finance" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_finance" rows="2" class="form-control" path="comments_finance"></textarea>
                                                                    </td>
                                                              </tr>

                                                            <tr>
                                                                <td><h5>MARKETING & CORPORATE COMMUNICATIONS</h5></td>
                                                                <td>
                                                                       
                                                                    
                                                              <div class="panel-group" id="accordion6" role="tablist" aria-multiselectable="true">
                                                                        <div class="panel panel-primary">
                                                                         <a class="collapsed" data-toggle="collapse" data-parent="#accordion6" href="#collapse19" aria-expanded="false" aria-controls="collapse19">
                                                                           <div class="panel-heading" role="tab" id="heading19">
                                                                                <h4 class="panel-title">
                                                                                     Accessibility for enquiries / complaints
                                                                                <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                             </a>
                                                                            <div id="collapse19" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading19">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                         <div class="star-rating-mcc-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_mcc" id="access_mcc" name="access_mcc" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion6" href="#collapse20" aria-expanded="false" aria-controls="collapse20">
                                                                            <div class="panel-heading" role="tab" id="heading20">
                                                                                <h4 class="panel-title">
                                                                                    Quality of service
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                                </a>
                                                                            <div id="collapse20" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading20">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-mcc-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_mcc" id="qos_mcc" name="qos_mcc" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion6" href="#collapse21" aria-expanded="false" aria-controls="collapse21">
                                                                            <div class="panel-heading" role="tab" id="heading21">
                                                                                <h4 class="panel-title">
                                                                                      Turnaround time and  resolutions
                                                                                   <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                                 </a>
                                                                            <div id="collapse21" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading21">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-mcc-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_mcc" id="turn_mcc" name="turn_mcc" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                    </div>      
                                                                      </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-mcc star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="mcc" id="mcc" name="mcc" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_mcc" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_mcc" rows="2" class="form-control" path="comments_mcc"></textarea>
                                                                   </td>

                                                            </tr>
                                                            
                                                            <tr>
                                                                <td><h5>ANCHORIA OPERATIONS</h5></td>
                                                                <td>
                                                                       
                                                                    
                                                              <div class="panel-group" id="accordion7" role="tablist" aria-multiselectable="true">
                                                                       
                                                                  <div class="panel panel-primary">
                                                                       <a class="collapsed" data-toggle="collapse" data-parent="#accordion7" href="#collapse40" aria-expanded="false" aria-controls="collapse40">
                                                                            <div class="panel-heading" role="tab" id="heading22">
                                                                                <h4 class="panel-title">
                                                                               Accessibility for enquiries / complaints
                                                                               <span class="caret"></span>
                                                                                
                                                                                </h4>
                                                                            </div>
                                                                           </a>
                                                                            <div id="collapse40" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading40">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                         <div class="star-rating-anch_ops-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_anch_ops" id="access_anch_ops" name="access_anch_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion7" href="#collapse23" aria-expanded="false" aria-controls="collapse23">
                                                                            <div class="panel-heading" role="tab" id="heading23">
                                                                                <h4 class="panel-title">
                                                                                       Quality of service
                                                                                       <span class="caret"></span>
                                                                                 </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse23" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading23">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-anch_ops-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_anch_ops" id="qos_anch_ops" name="qos_anch_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion7" href="#collapse24" aria-expanded="false" aria-controls="collapse24">
                                                                           <div class="panel-heading" role="tab" id="heading24" >
                                                                                <h4 class="panel-title">
                                                                                      Turnaround time and  resolutions
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse24" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading24">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-anch_ops-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_anch_ops" id="turn_anch_ops" name="turn_anch_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                    </div>      
                                                                      </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-anch_ops star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="anch_ops" id="anch_ops" name="anch_ops" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_anch_ops" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_anch_ops" rows="2" class="form-control" path="comments_anch_ops"></textarea>
                                                                   </td>

                                                            </tr>
                                                            <tr>
                                                                <td><h5>FX OPERATIONS</h5></td>
                                                                <td>
                                                                       
                                                                    
                                                              <div class="panel-group" id="accordion8" role="tablist" aria-multiselectable="true">
                                                                       
                                                                  <div class="panel panel-primary">
                                                                       <a class="collapsed" data-toggle="collapse" data-parent="#accordion8" href="#collapse25" aria-expanded="false" aria-controls="collapse25">
                                                                            <div class="panel-heading" role="tab" id="heading25">
                                                                                <h4 class="panel-title">
                                                                               Accessibility for enquiries / complaints
                                                                               <span class="caret"></span>
                                                                                
                                                                                </h4>
                                                                            </div>
                                                                           </a>
                                                                            <div id="collapse25" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading25">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                         <div class="star-rating-fx_ops-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_fx_ops" id="access_fx_ops" name="access_fx_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion8" href="#collapse26" aria-expanded="false" aria-controls="collapse26">
                                                                            <div class="panel-heading" role="tab" id="heading26">
                                                                                <h4 class="panel-title">
                                                                                       Quality of service
                                                                                       <span class="caret"></span>
                                                                                 </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse26" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading26">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-fx_ops-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_fx_ops" id="qos_fx_ops" name="qos_fx_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion8" href="#collapse27" aria-expanded="false" aria-controls="collapse27">
                                                                           <div class="panel-heading" role="tab" id="heading27" >
                                                                                <h4 class="panel-title">
                                                                                      Turnaround time and  resolutions
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse27" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading27">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-fx_ops-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_fx_ops" id="turn_fx_ops" name="turn_fx_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                    </div>      
                                                                      </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-fx_ops star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="fx_ops" id="fx_ops" name="fx_ops" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_fx_ops" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_fx_ops" rows="2" class="form-control" path="comments_fx_ops"></textarea>
                                                                   </td>

                                                            </tr>
                                                            <tr>
                                                                <td><h5>MFB OPERATIONS</h5></td>
                                                                <td>
                                                                       
                                                                    
                                                              <div class="panel-group" id="accordion9" role="tablist" aria-multiselectable="true">
                                                                       
                                                                  <div class="panel panel-primary">
                                                                       <a class="collapsed" data-toggle="collapse" data-parent="#accordion9" href="#collapse28" aria-expanded="false" aria-controls="collapse28">
                                                                            <div class="panel-heading" role="tab" id="heading28">
                                                                                <h4 class="panel-title">
                                                                               Accessibility for enquiries / complaints
                                                                               <span class="caret"></span>
                                                                                
                                                                                </h4>
                                                                            </div>
                                                                           </a>
                                                                            <div id="collapse28" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading28">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                         <div class="star-rating-mfb_ops-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_mfb_ops" id="access_mfb_ops" name="access_mfb_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion9" href="#collapse29" aria-expanded="false" aria-controls="collapse29">
                                                                            <div class="panel-heading" role="tab" id="heading29">
                                                                                <h4 class="panel-title">
                                                                                       Quality of service
                                                                                       <span class="caret"></span>
                                                                                 </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse29" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading29">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-mfb_ops-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_mfb_ops" id="qos_mfb_ops" name="qos_mfb_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion9" href="#collapse30" aria-expanded="false" aria-controls="collapse30">
                                                                           <div class="panel-heading" role="tab" id="heading30" >
                                                                                <h4 class="panel-title">
                                                                                      Turnaround time and  resolutions
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse30" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading30">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-mfb_ops-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_mfb_ops" id="turn_mfb_ops" name="turn_mfb_ops" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                    </div>      
                                                                      </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-mfb_ops star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="mfb_ops" id="mfb_ops" name="mfb_ops" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_mfb_ops" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_mfb_ops" rows="2" class="form-control" path="comments_mfb_ops"></textarea>
                                                                   </td>

                                                            </tr>
                                                            
                                                             <tr>
                                                                <td><h5>TREASURY OPERATIONS</h5></td>
                                                                <td>
                                                                       
                                                                    
                                                              <div class="panel-group" id="accordion10" role="tablist" aria-multiselectable="true">
                                                                        
                                                                  <div class="panel panel-primary">
                                                                       <a class="collapsed" data-toggle="collapse" data-parent="#accordion10" href="#collapse31" aria-expanded="false" aria-controls="collapse31">
                                                                            <div class="panel-heading" role="tab" id="heading31">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                               <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                           </a>
                                                                            <div id="collapse31" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading31">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                         <div class="star-rating-try_ops-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_try_ops" id="access_try_ops" name="access_try_ops" value="0"/>
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion10" href="#collapse32" aria-expanded="false" aria-controls="collapse32">
                                                                            <div class="panel-heading" role="tab" id="heading32">
                                                                                <h4 class="panel-title">
                                                                                     Quality of service
                                                                                     <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse32" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading32">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-try_ops-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_try_ops" id="qos_try_ops" name="qos_try_ops" value="0"/>
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion10" href="#collapse33" aria-expanded="false" aria-controls="collapse33">
                                                                           <div class="panel-heading" role="tab" id="heading33">
                                                                                <h4 class="panel-title">
                                                                                      Turnaround time and  resolutions
                                                                                   <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                           </a>
                                                                            <div id="collapse33" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading33">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-try_ops-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_try_ops" id="turn_try_ops" name="turn_try_ops" value="0"/>
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                    </div>      
                                                                      </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-try_ops star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="try_ops" id="try_ops" name="try_ops" value="0"/>
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_try_ops" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_try_ops" rows="2" class="form-control" path="comments_try_ops"></textarea>
                                                                   </td>

                                                            </tr>
                                                            
                                                            <tr>
                                                                <td><h5>RESOURCES/ADMIN</h5></td>
                                                                <td>
                                                                       
                                                                    
                                                              <div class="panel-group" id="accordion11" role="tablist" aria-multiselectable="true">
                                                                        
                                                                  <div class="panel panel-primary">
                                                                       <a class="collapsed" data-toggle="collapse" data-parent="#accordion11" href="#collapse34" aria-expanded="false" aria-controls="collapse34">
                                                                            <div class="panel-heading" role="tab" id="heading34">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                               <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                           </a>
                                                                            <div id="collapse34" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading34">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                         <div class="star-rating-resource-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_resource" id="access_resource" name="access_resource" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion11" href="#collapse35" aria-expanded="false" aria-controls="collapse35">
                                                                            <div class="panel-heading" role="tab" id="heading35">
                                                                                <h4 class="panel-title">
                                                                                     Quality of service
                                                                                     <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse35" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading35">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-resource-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_resource" id="qos_resource" name="qos_resource" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion11" href="#collapse36" aria-expanded="false" aria-controls="collapse36">
                                                                           <div class="panel-heading" role="tab" id="heading36">
                                                                                <h4 class="panel-title">
                                                                                      Turnaround time and  resolutions
                                                                                   <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                           </a>
                                                                            <div id="collapse36" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading36">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                            <div class="star-rating-resource-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_resource" id="turn_resource" name="turn_resource" value="0">
                                                                          </div>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                  
                                                                    </div>      
                                                                      </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-resource star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="resource" id="resource" name="resource" value="0">
                                                                          </div>
                                                                    
                                                                       <span id="totalRating_resource" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_resource" rows="2" class="form-control" path="comments_resource"></textarea>
                                                                   </td>

                                                            </tr>
                                                            
                                                            
                                                              <tr>
                                                                <td><h5>EXECUTIVE OFFICE<h5></td>
                                                                <td>
                                                                     <div class="panel-group" id="accordion20" role="tablist" aria-multiselectable="true">
                                                                        <div class="panel panel-primary">
                                                                          <a class="collapsed" data-toggle="collapse" data-parent="#accordion20" href="#collapse50" aria-expanded="false" aria-controls="collapse50">
                                                                           <div class="panel-heading" role="tab" id="heading50">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse50" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading50">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-exco-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_exco" id="access_exco" name="access_exco" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion20" href="#collapse51" aria-expanded="false" aria-controls="collapse51">
                                                                           <div class="panel-heading" role="tab" id="heading51">
                                                                                <h4 class="panel-title">
                                                                                     Quality of service
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                                </a>
                                                                            <div id="collapse51" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading51">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                           <div class="star-rating-exco-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_exco" id="qos_exco" name="qos_exco" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                          <a class="collapsed" data-toggle="collapse" data-parent="#accordion20" href="#collapse52" aria-expanded="false" aria-controls="collapse52">
                                                                           <div class="panel-heading" role="tab" id="heading52">
                                                                                <h4 class="panel-title">
                                                                                       Turnaround time and  resolutions
                                                                                   <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                               </a>
                                                                            <div id="collapse52" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading52">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-exco-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_exco" id="turn_exco" name="turn_exco" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-exco star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="exco" id="exco" name="exco" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_exco" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span>
                                                                    
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_exco" rows="2" class="form-control" path="comments_exco"></textarea>
                                                                    </td>
                                                              </tr>
                                                            
                                                            <tr>
                                                                <td><h5>CLIENT EXPERIENCE<h5></td>
                                                                <td>
                                                                     <div class="panel-group" id="accordion28" role="tablist" aria-multiselectable="true">
                                                                        <div class="panel panel-primary">
                                                                          <a class="collapsed" data-toggle="collapse" data-parent="#accordion28" href="#collapse90" aria-expanded="false" aria-controls="collapse90">
                                                                           <div class="panel-heading" role="tab" id="heading90">
                                                                                <h4 class="panel-title">
                                                                                      Accessibility for enquiries / complaints
                                                                                </h4>
                                                                            </div>
                                                                            </a>
                                                                            <div id="collapse90" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading90">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-client-access star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="access_client" id="access_client" name="access_client" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion28" href="#collapse91" aria-expanded="false" aria-controls="collapse91">
                                                                           <div class="panel-heading" role="tab" id="heading91">
                                                                                <h4 class="panel-title">
                                                                                     Quality of service
                                                                                    <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                                </a>
                                                                            <div id="collapse91" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading91">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                           <div class="star-rating-client-qos star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="qos_client" id="qos_client" name="qos_client" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-primary">
                                                                          <a class="collapsed" data-toggle="collapse" data-parent="#accordion28" href="#collapse92" aria-expanded="false" aria-controls="collapse92">
                                                                           <div class="panel-heading" role="tab" id="heading92">
                                                                                <h4 class="panel-title">
                                                                                       Turnaround time and  resolutions
                                                                                   <span class="caret"></span>
                                                                                </h4>
                                                                            </div>
                                                                               </a>
                                                                            <div id="collapse92" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading92">
                                                                                <div class="panel-body">
                                                                                    <p>
                                                                          <div class="star-rating-client-turn star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="turn_client" id="turn_client" name="turn_client" value="0">
                                                                          </div>
                                                                    
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </td>
                                                                
                                                                <td>
                                                                    <div class="star-rating-client star-rating-general">
                                                                            <span class="fa fa-star-o" data-rating="1"></span>
                                                                            <span class="fa fa-star-o" data-rating="2"></span>
                                                                            <span class="fa fa-star-o" data-rating="3"></span>
                                                                            <span class="fa fa-star-o" data-rating="4"></span>
                                                                            <span class="fa fa-star-o" data-rating="5"></span>
                                                                            <input type="hidden" class="rating-value" path="client" id="client" name="client" value="0">
                                                                          </div>
                                                                    
                                                                    <span id="totalRating_client" style="padding-left: 40px; padding-top: 25px; font-size:24px;"></span> 
                                                                </td>

                                                                    <td>
                                                                        <textarea placeholder="comments" name="comments_client" rows="2" class="form-control" path="comments_client"></textarea>
                                                                    </td>
                                                              </tr>
                                                        </tbody>
                                                    </table>
                                                    <div class="panel-footer text-center">

                                                        <button class="btn btn-success custom" type="submit">Submit Rating</button>
                                                        </div>
                                                    </form>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:when>
                                        <c:otherwise>
                                            <strong>${isActivated}</strong>
                                            <div class="alert alert-warning text-center" role="alert">
                                            Dear ${user.name}, <strong>Performance rating for this month is yet to be activated. <br>Please Contact the Administrator</strong>
                                             </div>
                                        </c:otherwise>
                                    </c:choose>
                                   
                                    
                                   
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
                                    <li class="menu-body active">
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

   


</body>

</html>