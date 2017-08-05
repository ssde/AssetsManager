<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="requestURI" value="${pageContext.request.requestURI}" />
<c:set var="isDevice" value="${fn:contains(requestURI, '/devices/')}" />
<c:set var="isOwner" value="${fn:contains(requestURI, '/owners/')}" />
<c:set var="isPart" value="${fn:contains(requestURI, '/parts/')}" />

<!DOCTYPE html> 

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Assets Manager - <sitemesh:write property='title' /></title>
	<link rel="stylesheet" type="text/css" href="${contextPath}/css/decorator.css" />
	<!-- link rel="stylesheet" type="text-css" href="" / -->
	<link rel="stylesheet" type="text-css" href="${contextPath}/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text-css" href="${contextPath}/css/font-awesome.min.css" />
	<sitemesh:write property='head' />
</head>
<body>

<div class="header">
  	<h1>Assets Manager</h1>
</div>

<div class="tabs">
  	<a ${isDevice ? 'class="s"' : ''} href='${contextPath}/devices/Listing.action'>Devices</a>
  	<a ${isOwner ? 'class="s"' : ''} href='${contextPath}/owners/Listing.action'>Owners</a>
  	<a ${isPart ? 'class="s"' : ''} href='${contextPath}/parts/Listing.action'>Parts</a>
</div>
<div class="tabs-under-bg"></div>
<div class="tabs-under">
  	<c:if test="${isDevice}">
    	<a href="Listing.action">List of Devices</a>
    	|<a href="New.action">New Device</a>
  	</c:if>
  	<c:if test="${isOwner}">
    	<a href="Listing.action">List of Owners</a>
    	|<a href="New.action">New Owner</a>
  	</c:if>
  	<c:if test="${isPart}">
    	<a href="Listing.action">List of Parts</a>
    	|<a href="New.action">New Part</a>
  	</c:if>
 	&nbsp;
</div>

<div class="bodyhead">
	<h2><sitemesh:write property='title' /></h2>
</div>
<div class="body">
	<sitemesh:write property='body' />
</div>

</body>
</html>