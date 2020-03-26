<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="layout-head.jsp" %>

		<div>Edit User</div>
		<c:if test="${!empty user}">	  
	    <form class="col-md-5 m-4" method="POST" action="update_user">
	        <div class="form-group">
	            <label>
	                <strong>ID</strong>
	            </label>
	            <input class="form-control" type="text" value="${user.id}" name="username" readonly>
	        </div>
	        
	        <div class="form-group">
	            <label>
	                <strong>Username</strong>
	            </label>
	            <input class="form-control" type="text" value="${user.username}" name="username">
	        </div>
	
	        <div class="form-group">
	            <label>
	                <strong>Email</strong>
	            </label>
	            <input class="form-control" type="text" value="${user.email}" name="email">
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
	            <input class="form-control" type="text" value="${ user.firstname}" name="firstname">
	        </div>
	
	        <div class="form-group">
	            <label>
	                <strong>Last Name</strong>
	            </label>
	            <input class="form-control" type="text" value="${user.lastname}" name="lastname">
	        </div>
	
	
	        <div class="form-group">
	            <input class="btn btn-primary shadow-sm" type="submit" value="Edit">
	        </div>
	</c:if>
	    </form>
	
<%@ include file="layout-foot.jsp" %>