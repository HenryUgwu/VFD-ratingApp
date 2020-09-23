
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Login Page | VFD GROUP</title>
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

    <body background="<c:url value='/resources/img/login.png'/>">

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
                                <h3 style="color: green">Please Log In</h3>
                                <div class="row md-group">
                                </div>
                            </div>
                            
                            <form:form action="login" method="POST" role="form" cssClass="form-horizontal" modelAttribute="user" name="loginForm">
                                <c:if test="${fn:length(errorMessage) gt 0}">

                                    <div class="alert alert-danger text-center has-error" role="alert">
                                        <strong>${errorMessage}</strong>
                                    </div>
                                </c:if>    

                                <div class="md-input-wrapper">
                                    <span class="glyphicon glyphicon-user"></span>
                                    <form:input path="email" type="text" placeholder="Enter Staff Email" cssClass="form-control" id="email" name="email" />
                                </div>

                                <div class="md-input-wrapper">
                                    <span class="glyphicon glyphicon-lock"></span>
                                    <form:input type="password" path="password" placeholder="Enter Password" class="form-control" id="password" name="password" />

                                </div>
                                
                                <div class="row">
                                   
                                    <div class="col-sm-6 col-xs-12 forgot-phone pull-left">
                                        <a href="resetpassword" class="text-right f-w-600">Forgot Password?</a>
                                    </div>
                                     <div class="col-xs-10 offset-xs-1">
                                        <button type="submit" class="btn btn-primary btn-md waves-effect pull-right">Login</button>
                                    </div>
                                    
                                </div>
                                
                            </form:form>

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