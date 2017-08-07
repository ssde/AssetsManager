<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
String uri = (String)request.getAttribute("javax.servlet.forward.request_uri");
boolean isDevice = uri.contains("/devices/");
boolean isOwner  = uri.contains("/owners/");
boolean isRepair = uri.contains("/parts/");
boolean isAdmin  = uri.contains("/admin/");
%>
<!DOCTYPE html> 

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Assets Manager - <sitemesh:write property='title' /></title>
	<link rel="stylesheet" type="text-css" href="${contextPath}/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text-css" href="${contextPath}/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="${contextPath}/css/decorator.css" />
	<sitemesh:write property='head' />
</head>
<body>

<div class="header">
  	<h1>Assets Manager</h1>
</div>
<div class="tabs">
  	<a <%= isDevice? "class='s'" : ""%> href='${contextPath}/devices/Listing.action'><i class="fa fa-laptop"	></i> Devices</a>
  	<a <%= isOwner ? "class='s'" : ""%> href='${contextPath}/owners/Listing.action'	><i class="fa fa-id-card-o"	></i> Owners</a>
  	<a <%= isRepair? "class='s'" : ""%> href='${contextPath}/repairs/Listing.action'><i class="fa fa-heartbeat"	></i> Repairs</a>
  	<a <%= isAdmin ? "class='s'" : ""%> href='${contextPath}/admin/Listing.action'	><i class="fa fa-user"		></i> Admin</a>
</div>
<div class="tabs-under-bg"></div>
<div class="tabs-under">
<%
	if(isDevice) {
%>
    	<a href="Listing.action"><i class="fa fa-list"></i> List of Devices</a>
    	|<a href="New.action"><i class="fa fa-plus"></i> Add Device</a>
<%
	} if(isOwner) {
%>
    	<a href="Listing.action"><i class="fa fa-list"></i> List of Owners</a>
    	|<a href="New.action">New Owner</a>
<%
  	} if(isRepair) {
%>
    	<a href="Listing.action"><i class="fa fa-list"></i> List of Repairs</a>
    	|<a href="New.action"><i class="fa fa-plus"></i> Add Repair</a>
<%
 	} if(isAdmin) {
%>
    	<a href="Listing.action"><i class="fa fa-list"></i> List of Users</a> 
    	|<a href="New.action"><i class="fa fa-plus"></i> Add User</a>
<%
 	}
%>
</div>

<div class="bodyhead">
	<h2><sitemesh:write property='title' /></h2>
</div>
<div class="body">
	<sitemesh:write property='body' />
</div>

</body>
</html>