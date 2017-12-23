<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/form.css">
</head>
<body>
<div id="container">
		<!-- 顶部banner和导航条 -->
		<div id="banner">
			<img src="${pageContext.request.contextPath}\images\banner.jpg">
		</div>
		<div id="globallink">
			<ul>
			
				<li><a href="${pageContext.request.contextPath}/page/manage/addBouquet" target="frameCenter">发布新花</a></li>
				<li><a href="${pageContext.request.contextPath}/order/queryList" target="frameCenter">订单管理</a></li>
				<li><a href="<c:url value="/querySalesRecord"></c:url>" target="frameCenter">销售记录</a></li>
				<li><a href="<c:url value="/page/salesReport"></c:url>" target="frameCenter">销售报表</a></li>
				<li><a href="<c:url value="/queryMembers"></c:url>" target="frameCenter">会员管理</a></li>
				<li><a href="<c:url value="/order/queryReturnList"></c:url>" target="frameCenter">退货请求</a></li>
				<li><a href="<c:url value="/queryBouquet"></c:url>" target="frameCenter">花店管理</a></li>
			</ul>
		</div>
</div>
</body>
</html>