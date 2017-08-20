<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
String uri = (String)request.getAttribute("javax.servlet.forward.request_uri");
boolean isDevice = uri.contains("/devices/");
boolean isOwner  = uri.contains("/owners/");
boolean isRepair = uri.contains("/repairs/");
boolean isAdmin  = uri.contains("/admin/");
int activeTab = 0;
if(isDevice) activeTab=0;
if(isOwner) activeTab=1;
if(isRepair) activeTab=2;
if(isAdmin) activeTab=3;
%>
<!DOCTYPE html> 

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Assets Manager - <sitemesh:write property='title' /></title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/css/jquery-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${contextPath}/css/jquery-ui.structure.min.css" />
    <link rel="stylesheet" type="text/css" href="${contextPath}/css/jquery-ui.theme.min.css" />
	<link rel="stylesheet" type="text-css" href="${contextPath}/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${contextPath}/css/decorator.css" />
	<link rel="stylesheet" type="text-css" href="${contextPath}/css/fontawesome.min.css" />
    <script src="${contextPath}/js/jquery.js"></script>
    <script src="${contextPath}/js/jquery-ui.min.js"></script>
	<script src="${contextPath}/js/popper.min.js"></script>
	<script src="${contextPath}/js/bootstrap.min.js"></script>
    <script>
        $(function(){
            $('#tabs').tabs({active: <%=activeTab%>});
            $('.datepicker').datepicker();
        });
    </script>
</head>
<body>

<div class="header">
  	<h1>Assets Manager</h1>
</div>
<div id="tabs">
    <ul>
        <li><a href='#devices'><i class="fa fa-laptop"	    ></i> Devices</a></li>
        <li><a href='#owners' ><i class="fa fa-id-card-o"	></i> Owners</a></li>
        <li><a href='#repairs'><i class="fa fa-heartbeat"	></i> Repairs</a></li>
        <li><a href='#admin'  ><i class="fa fa-user"		></i> Admin</a></li>
    </ul>
    <div id="devices"   >
        <a href="${contextPath}/devices/Listing.action"><i class="fa fa-list"></i> List of Devices</a>
    	|&nbsp;<a href="${contextPath}/devices/New.action"><i class="fa fa-plus"></i> Add Device</a>
    </div>
    <div id="owners"    >
        <a href="${contextPath}/owners/Listing.action"><i class="fa fa-list"></i> List of Owners</a>
    	|&nbsp;<a href="${contextPath}/owners/New.action"><i class="fa fa-plus"></i> New Owner</a>
    </div>
    <div id="repairs"   >
        <a href="${contextPath}/repairs/Listing.action"><i class="fa fa-list"></i> List of Repairs</a>
    	|&nbsp;<a href="${contextPath}/repairs/New.action"><i class="fa fa-plus"></i> Add Repair</a>
    </div>
    <div id="admin"     >
        <a href="${contextPath}/admin/Listing.action"><i class="fa fa-list"></i> List of Users</a> 
    	|&nbsp;<a href="${contextPath}/admin/New.action"><i class="fa fa-plus"></i> Add User</a>
    </div>
    <!-- Actual page content -->
    <div class="bodyhead">
        <h4><sitemesh:write property='title' /></h4>
    </div>
    <div class="body">
        <sitemesh:write property='body' />
    </div>

</div>
<!--
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
-->

</body>
</html>