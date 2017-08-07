<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>

<html>

	<head>
		<title>New Device</title>
	</head>
	
	<body>
		<s:form theme="bootstrap" label="New device info">
			<s:textfield label="Brand" 					name="brand"  		tooltip="Enter the brand here"/>
			<s:textfield label="Model" 					name="model" 		tooltip="Enter the model here"/>
			<s:textfield label="QAD Tag" 				name="qad_tag" 		tooltip="Enter the QAD inventory tag here"/>
			<s:textfield label="Service Tag" 			name="service_tag" 	tooltip="Enter the service tag here"/>
			<s:textfield label="Express Service Code" 	name="express" 		tooltip="Enter the express service code here"/>
			<s:submit value="Create" cssClass="btn btn-primary" />
		</s:form>
	</body>
</html>