<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="layout-head.jsp" %>

	<div>
		<div>
			<a class="btn btn-dark m-4 shadow-sm " href="home"><i class="text-light mr-2 fa fa-user-plus"></i>Add User</a>
		</div>
		
		<table class="table shadow">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Username</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Email</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			
		
				<c:forEach items="${users}" var="user">
					<tbody>
						<tr>
							<td scope="row">${user.id}</td>
							<td>${user.username}</td>
							<td>${user.firstname}</td>
							<td>${user.lastname}</td>
							<td>${user.email}</td>
							<td>
								<a class="btn btn-sm btn-primary text-light" href="edit_user?id=${user.id}"><i class="fa mr-2 fa-edit"></i>Edit</a> |
								<a class="btn btn-sm btn-danger text-light" href="delete_user?id=${user.id}"><i class="fa mr-2 fa-trash"></i>Delete</a>
							</td>
						</tr>
						
					</tbody>
				</c:forEach>
			
		</table>
	</div>
<%@ include file="layout-foot.jsp" %>