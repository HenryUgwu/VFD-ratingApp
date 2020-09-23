
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password|VFD GROUP</title>
        <link rel="shortcut icon" href="<spring:url value="/resources/img/favicon.ico"/>">

        <!--STYLESHEET-->
        <!--=================================================-->
        <!--Roboto Slab Font [ OPTIONAL ] -->
        <link href="http://fonts.googleapis.com/css?family=Helvetica:400,300,100,700" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Helvetica:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet">
        <!--Bootstrap Stylesheet [ REQUIRED ]-->
        <link href="<spring:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <!--Jasmine Stylesheet [ REQUIRED ]-->
        <link href="<spring:url value="/resources/css/style.css"/>" rel="stylesheet"/>

        <!--Font Awesome [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
        <!--Switchery [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/switchery/switchery.min.css"/>" rel="stylesheet">
        <!--Bootstrap Select [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/bootstrap-select/bootstrap-select.min.css"/>" rel="stylesheet">
        <!--Demo [ DEMONSTRATION ]-->
        <link href="<spring:url value="/resources/css/demo/jasmine.css"/>" rel="stylesheet">
        <!--SCRIPT-->
        <!--=================================================-->
        <!--Page Load Progress Bar [ OPTIONAL ]-->
        <link href="<spring:url value="/resources/plugins/pace/pace.min.css"/>" rel="stylesheet">
        <script src="<spring:url value="/resources/plugins/pace/pace.min.js"/>"></script>
    </head>
    <!--TIPS-->
    <!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

    <body background="<c:url value='/resources/img/loginpics-min.png'/>">

        <div id="container">

            <div class="lock-wrapper">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="lock-box">
                            <div class="main">
                                <center>
                                    <h5 style="color: green"><strong>DEPARTMENT RATING APP</strong></h5>
                                    <img src="<c:url value='/resources/img/vfd harp.png'/>" width="90" height="90">
                                </center>
                                <h3 class="txt-primary text-center m-b-25">Reset Password</h3>
                                <div class="row">
                                </div>
                            </div>
                                    <c:choose>
                                        <c:when test="${fn:length(successMessage) gt 0}">
                                            <div class="alert alert-success text-center " role="alert">
                                                <strong>${sucessMessage}</strong>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                             <form:form action="changepassword" method="POST" role="form" cssClass="form-horizontal" modelAttribute="user" name="passwordForm">
                                <form:input type="text" id="email" path="email" name="email" value="${user.email}" hidden="true"/>
                                
                                 <div class="md-group">
                                    <div class="md-input-wrapper">
                                        <label>New Password</label>
                                        <form:input type="password" path="password" class="form-control" id="password" name="password"/>
                                   </div>
                                   <div class="md-input-wrapper">
                                        <label>Confirm Password</label>
                                       <form:input type="password" path="confirmPassword" class="form-control" id="confirmPassword" name="confirmPassword" />
                                   </div>
                                   &nbsp;
                                   <div class="row">
                                    <div class="col-md-12 text-center">
                                       <a href="login" class="pull-left">Sign In Here</a>
                                    </div>
                                   <div class="btn-forgot">
                                    <button type="submit" class="btn btn-primary text-center center-block">
                                        Change Password
                                    </button>
                                  </div>
                                

                                </form:form>

                                        </c:otherwise>
                                    </c:choose>
                                      
                           
                            </div>

                        </div>
                    </div>


                </div>
                <style>
                    #container{
                        background-image:url ("loginpics-min.png");
                    }

                </style>

                <script src="<spring:url value="/resources/js/jquery-3.4.0.min.js"/>"></script>
                <!--BootstrapJS [ RECOMMENDED ]-->
                <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
                <!--Fast Click [ OPTIONAL ]-->
                <script src="<spring:url value="/resources/plugins/fast-click/fastclick.min.js"/>"></script>
                <!--Switchery [ OPTIONAL ]-->
                <script src="<spring:url value="/resources/plugins/switchery/switchery.min.js"/>"></script>
                <!--Bootstrap Select [ OPTIONAL ]-->
                <script src="<spring:url value="/resources/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>
                <script src="<spring:url value="/resources/js/custom/validate.js"/>"></script>
                <script src="<spring:url value="/resources/js/custom/validate.min.js"/>"></script>
                <script src="<spring:url value="/resources/js/custom/loginValidate.js"/>"></script>


                </body>
                </html>
