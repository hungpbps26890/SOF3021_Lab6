<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/tablib.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--
Victory HTML CSS Template
https://templatemo.com/tm-507-victory
-->
        <title>Login</title>
        
        <%@ include file="/common/head.jsp" %>
    </head>

<body>
    <%@ include file="/common/header.jsp" %>
    <!--/.header-->
    
    <section class="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="section-heading">
                        <h2>Register</h2>
                    </div>
                    <form:form action="register" method="post" modelAttribute="registerUser">
                        <div class="row">
                            <div class="col-md-6">
                                <fieldset>
                                    <form:input path="username" type="text" class="form-control" id="username" placeholder="Your username..."/>
                                    <form:errors path="username" class="text-danger"></form:errors>
                                </fieldset>
                                <fieldset>
                                    <form:input path="password" type="password" class="form-control" id="password" placeholder="Your password..." />
                                    <form:errors path="password" class="text-danger"></form:errors>
                                </fieldset>
                                <fieldset>
                                    <form:input path="phoneNumber" type="text" class="form-control" id="phoneNumber" placeholder="Your phone number..."/>
                                    <form:errors path="phoneNumber" class="text-danger"></form:errors>
                                </fieldset>
                            </div>
                            <div class="col-md-6">
                            	<fieldset>
                                    <form:input path="firstName" type="text" class="form-control" id="firstName" placeholder="Your first name..."/>
                                    <form:errors path="firstName" class="text-danger"></form:errors>
                                </fieldset>
                                <fieldset>
                                    <form:input path="lastName" type="text" class="form-control" id="lastName" placeholder="Your last name..."/>
                                    <form:errors path="lastName" class="text-danger"></form:errors>
                                </fieldset>
                                <fieldset>
                                    <form:input path="email" type="text" class="form-control" id="email" placeholder="Your email..."/>
                                    <form:errors path="email" class="text-danger"></form:errors>
                                </fieldset>
                            </div>
                            <div class="col-md-12">
                            	<fieldset>
                                    <button type="submit" id="form-submit" class="btn">Register</button>
                                </fieldset>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </section>

	<%@ include file="/common/footer.jsp" %>
	<%@ include file="/common/java-script.jsp" %>
</body>
</html>