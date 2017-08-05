<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>

<html>

	<head>
		<title>New Device</title>
	</head>
	
	<body>
		<s:form>
			<s:textfield label="Brand" 					name="brand" />
			<s:textfield label="Model" 					name="model" />
			<s:textfield label="QAD Tag" 				name="qad_tag" />
			<s:textfield label="Service Tag" 			name="service_tag" />
			<s:textfield label="Express Service Code" 	name="express" />
			<s:submit value="Create" />
			<a href="#" class="btn btn-success" onclick="form.submit()"><i class="fa fa-save"></i>Save</a>
		</s:form>
	</body>
</html>