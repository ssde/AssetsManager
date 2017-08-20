<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Device details - <s:property value="qad_tag"/></title>
	</head>
	<body>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Brand</th>
					<th>Model</th>
					<th>Series</th>
					<th>QAD Tag</th>
					<th>Service Tag/Serial</th>
					<th>Express Service Code</th>
					<th>Purchase Date</th>
					<th>Warranty End Date</th>
					<th>Owner</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><s:property value="brand"/></td>
					<td><s:property value="model"/></td>
					<td><s:property value="series"/></td>
					<td><s:property value="qad_tag"/></td>
					<td><s:property value="service_tag"/></td>
					<td><s:property value="express"/></td>
					<td><s:property value="purchase"/></td>
					<td><s:property value="warranty_end"/></td>
					<td><s:property value="owner.name"/></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="9">
						<a href="${contextPath}/devices/Edit.action" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
					</td>
				</tr>
			</tfoot>
		</table>
		<hr width="100%">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-12 bg-success">
							<p>Parts</p>
						</div>
					</div>
					<s:iterator value="parts">
						<div class="row">
							<div class="col-md-12">
								<s:property value="kind"/> - <s:property value="brand"/>
							</div>
						</div>
					</s:iterator>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-12 bg-success">
							<p>Repairs</p>
						</div>
					</div>
					<s:iterator value="repairs">
						<div class="row">
							<div class="col-md-12">
								<s:property value="log_date"/> - <s:property value="log"/>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>
		</div>
	</body>
</html>