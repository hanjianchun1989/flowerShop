<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Manage</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>
<frameset rows="28,67,15" border="0px">

<%-- 	<frame src='"<c:url value="/page/top"></c:url>'>
	<frame src='"<c:url value="/page/addBouquet"></c:url>'>
	<frame src='"<c:url value="/page/footer"></c:url>'> --%>
	<frame src='${pageContext.request.contextPath}/page/manage/top'>
	<frame src='${pageContext.request.contextPath}/page/manage/addBouquet' name="frameCenter">
	<frame src='${pageContext.request.contextPath}/page/footer'>
</frameset>
</html>
