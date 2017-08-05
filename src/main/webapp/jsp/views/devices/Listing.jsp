<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All devices</title>
</head>
<body>
	<s:iterator value="devices">
		<form action="Delete.action">
			<input type="hidden" name="id" value="<s:property value='id' />" />
			<a href="#" class="btn btn-danger" onclick="form.submit()"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
		</form>
		<form action="Parts.action">
			<input type="hidden" name="id" value="<s:property value='id' />" />
			<a href="#" class="btn btn-primary" onclick="form.submit()"><i class="fa fa-plus" aria-hidden="true"></i>Assign parts</a>
		</form>
		<form action="Repairs.action">
			<input type="hidden" name="id" value="<s:property value='id' />" />
			<a href="#" class="btn btn-primary" onclick="form.submit()"><i class="fa fa-plus" aria-hidden="true"></i>Assign repairs</a>
		</form>
	</s:iterator>
</body>
</html>