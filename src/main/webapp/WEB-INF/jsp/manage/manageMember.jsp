<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/form.css">
<style>
/* reset webkit search input browser style */
input {
	outline: none;
}

input[type=search] {
	-webkit-appearance: textfield;
	-webkit-box-sizing: content-box;
	font-family: inherit;
	font-size: 100%;
}

input::-webkit-search-decoration, input::-webkit-search-cancel-button {
	display: none; /* remove the search and cancel icon */
}

/* search input field */
input[type=search] {
	background: #ededed
		url(${pageContext.request.contextPath}/images/search.jpg) no-repeat
		1px center;
	border: solid 1px #ccc;
	padding: 9px 10px 9px 32px;
	width: 55px;
	-webkit-border-radius: 10em;
	-moz-border-radius: 10em;
	border-radius: 10em;
	-webkit-transition: all .5s;
	-moz-transition: all .5s;
	transition: all .5s;
}

input[type=search]:focus {
	width: 130px;
	background-color: #fff;
	border-color: #6dcff6;
	-webkit-box-shadow: 0 0 5px rgba(109, 207, 246, .5);
	-moz-box-shadow: 0 0 5px rgba(109, 207, 246, .5);
	box-shadow: 0 0 5px rgba(109, 207, 246, .5);
}

/* placeholder */
input:-moz-placeholder {
	color: #999;
}

input::-webkit-input-placeholder {
	color: #999;
}
.datalist tr:nth-child(even){
	background-color:#ffd8d9;	/* 隔行变色 */
}
</style>
</head>
<body>
	<table>
		<tr>
			<th align="left" width="100%">会员信息</th>
			<th align="right">
				<form action="${pageContext.request.contextPath}/queryMembers">
					<input type="search" placeholder="会员名" autofocus
						x-webkit-speech name="searchName"/>
				</form>
			</th>
		</tr>
	</table>
	<center>
				<table class=datalist summary="list of members in EE Studay">
					<tr>
						<th width="13%" scope="col">&nbsp;</th>
						<th width="13%" scope="col">名称</th>
						<th width="13%" scope="col">性别</th>
						<th width="13%" scope="col">邮箱</th>
						<th width="13%" scope="col">生日</th>
						<th width="13%" scope="col">地址</th>
						<th width="13%" scope="col">邮编</th>
						<th width="13%" scope="col">等级</th>
						<th width="13%" scope="col">电话</th>
					</tr>
					<!-- 隔行变色 -->
					<c:forEach items="${pageInfo.list}" var="member" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${member.name}</td>
							<td>${member.gender}</td>
							<td>${member.email}</td>
							<td><fmt:formatDate value="${member.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td>${member.address}</td>
							<td>${member.postcode}</td>
							<td>${member.rank}</td>
							<td>${member.phone}</td>
						</tr>
					</c:forEach>
				</table>
				<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
					<c:if test="${page_Num == pageInfo.pageNum }">
						<a href="#">${page_Num }</a>
					</c:if>
					<c:if test="${page_Num != pageInfo.pageNum }">
						<a
							href="${pageContext.request.contextPath}/queryMembers?pageNow=${page_Num }">${page_Num }</a>
					</c:if>
				</c:forEach>

	</center>
</body>
</html>