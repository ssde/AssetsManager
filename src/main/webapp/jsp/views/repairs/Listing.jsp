<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
	<head>
		<title>All Repairs</title>
	</head>
	<body>
	<!-- 
		<table class="table table-stripped">
			<thead>
				<tr>
					<th width="30%">Model</th>
					<th width="30%">QAD Tag</th>
					<th width="40%">Actions</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="repairs">
					<tr>
						<td><s:property value="log" /></td>
						<td><s:property value="log_date"/></td>
						<td>
						 	<a href="${contextPath}/devices/Details.action?id=<s:property value='id' />" class="btn btn-primary"><i class="fa fa-eye"></i></a> | 
						 	<a href="${contextPath}/devices/Delete.action?id=<s:property value='id' />" class="btn btn-danger"><i class="fa fa-trash-o"></i></a> | 
						 	<a href="${contextPath}/parts/DeviceParts.action?id=<s:property value='id' />" class="btn btn-success"><i class="fa fa-microchip"></i></a> | 
						 	<a href="${contextPath}/repairs/DeviceRepairs.action?id=<s:property value='id' />" class="btn btn-success"><i class="fa fa-heartbeat"></i></a>
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
	-->
	</body>
</html>