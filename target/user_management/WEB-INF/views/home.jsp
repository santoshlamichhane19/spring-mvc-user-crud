<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="layout-head.jsp" %>
	  
	    <form class="col-md-5 m-4" method="POST" action="add_user">
	        <div class="form-group">
	            <label>
	                <strong>Username</strong>
	            </label>
	            <input class="form-control" type="text" placeholder="Enter Username" name="username">
	        </div>
	
	        <div class="form-group">
	            <label>
	                <strong>Email</strong>
	            </label>
	            <input class="form-control" type="text" placeholder="Enter Email Address" name="email">
	        </div>
	
	        <div class="form-group ">
	            <label>
	                <strong>Password</strong>
	            </label>
	            <input class="form-control" type="password" placeholder="Enter Password" name="password">
	        </div>
	
	        <div class="form-group">
	            <label>
	                <strong>First Name</strong>
	            </label>
	            <input class="form-control" type="text" placeholder="Enter First Name" name="firstname">
	        </div>
	
	        <div class="form-group">
	            <label>
	                <strong>Last Name</strong>
	            </label>
	            <input class="form-control" type="text" placeholder="Enter Last Name" name="lastname">
	        </div>
	
	
	        <div class="form-group">
	            <input class="btn btn-primary shadow-sm" type="submit" value="Submit">
	        </div>
	
	    </form>
	
<%@ include file="layout-foot.jsp" %>