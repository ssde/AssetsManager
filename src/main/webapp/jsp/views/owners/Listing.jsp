<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
	<head>
		<title>All Owners</title>
	</head>
	<body>
		<table class="table table-stripped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Department</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="owners">
					<tr>
						<td><s:property value="name" /></td>
						<td><s:property value="area"/></td>
						<td>
						 <a href="${contextPath}/owners/Delete.action?id=<s:property value='id' />" class="btn btn-danger"><i class="fa fa-trash-o"></i>Delete</a> | 
						 <a href="${contextPath}/devices/DevicesOwner.action?id=<s:property value='id' />" class="btn btn-primary"><i class="fa fa-trash-o"></i>Add Device</a> | 
						 </td>
					</tr>
				</s:iterator>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">This is the end of the list</td>
				</tr>
			</tfoot>
		</table>
	</body>
</html>