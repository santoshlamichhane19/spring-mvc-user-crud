<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="layout-head.jsp" %>

		<div class="shadow-sm m-4 p-2 text-monospace col-md-5 bg-dark text-light"><strong>Edit User</strong></div>
		<c:if test="${!empty user}">	  
	    <form class="col-md-5 m-4 p-4 shadow align-items-center border border-danger" method="POST" action="update_user">
	        <div class="form-group">
	            <input class="form-control" type="text" value="${user.id}" name="id" hidden>
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