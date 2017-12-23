<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE form PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/form.css">
	</head>
<body>
	<form name="myform" action="${pageContext.request.contextPath}/addBouquet" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="bouquetId" value="${bouquet.bouquetId}">
		<!-- 将ID设置为不可见 -->
		名称：<input type="text" name="name" value="${bouquet.name}"><br>
		价格：<input type="text" name="price" value="${bouquet.price}">（元）<br>
		花语：<input type="text" name="meaning" value="${bouquet.meanings}"><br>
		分类：<input type="checkbox" name="type" value="2" ${bouquet.type%2==0?'checked':''}>爱情 
			<input type="checkbox" name="type" value="3" ${bouquet.type%3==0?'checked':''}>生日 
			<input type="checkbox" name="type" value="5" ${bouquet.type%5==0?'checked':''}>新年 
			<input type="checkbox" name="type" value="7" ${bouquet.type%7==0?'checked':''}>家庭 
			<input type="checkbox" name="type" value="11" ${bouquet.type%11==0?'checked':''}>亲情 
			<input type="checkbox" name="type" value="13" ${bouquet.type%13==0?'checked':''}>道歉
			<input type="checkbox" name="type" value="17" ${bouquet.type%17==0?'checked':''}>开业 
			<input type="checkbox" name="type" value="19" ${bouquet.type%19==0?'checked':''}>会议
		<br> 
		花材：<input type="checkbox" name="material" value="2" ${bouquet.material%2==0?'checked':''}>玫瑰 
			<input type="checkbox" name="material" value="3" ${bouquet.material%3==0?'checked':''}>百合 
			<input type="checkbox" name="material" value="5" ${bouquet.material%5==0?'checked':''}>郁金香 
			<input type="checkbox" name="material" value="7" ${bouquet.material%7==0?'checked':''}>康乃馨 
			<input type="checkbox" name="material" value="11" ${bouquet.material%11==0?'checked':''}>太阳花 
			<input type="checkbox" name="material" value="13" ${bouquet.material%13==0?'checked':''}>勿忘勿 
		<br>
		日期：<input type="date" name="date" value=<fmt:formatDate value="${bouquet.date}" pattern="yyyy-MM-dd HH:mm:ss"/>><br>
		图片: <br>
		<div id="preview">
			<img id="imghead" height="106" width="106"
				src='<c:url value="/images/flowers/${bouquet.picture}"></c:url>'>
		</div>
		<input type="button" onclick="javascript:f()" value="更换图片" id=button>
		<input type=file name="pictureFile" style="display: none;" id="change"
			onchange="previewImage(this)"> <br> 
			<input type="submit" name="submit" value="确定">
	</form>
	<script>
		function f() {
			s = document.getElementById("change").style.display;
			if (s == "block") {
				s1 = "none";
			} else {
				s1 = "block";
			}
			document.getElementById("button").style.display = s;
			document.getElementById("change").style.display = s1;
		}
	</script>
</body>
</html>