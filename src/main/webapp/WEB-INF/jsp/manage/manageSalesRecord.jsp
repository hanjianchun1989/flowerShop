<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE link PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	background: #ededed url(images/search.jpg) no-repeat 1px center;
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

.datalist tr:nth-child(even) {
	background-color: #ffd8d9; /* 隔行变色 */
}
</style>
</head>
<body>
	<div align="center">
		<table>
			<tr>
				<th align="left" width="100%">销售记录</th>
				<th align="right">
					<form action="SearchSaleList">
						<input type="search" placeholder="客户名/花束名" autofocus
							x-webkit-speech name="search">
					</form>
				</th>
			</tr>
		</table>

		<table class=datalist summary="list of members in EE Studay">
			<tr>
				<th scope="col"></th>
				<th scope="col" width="120">花束名称</th>
				<th scope="col" width="120">成交价格</th>
				<th scope="col" width="120">数量</th>
				<th scope="col" width="120">客户</th>
				<th scope="col" width="120">成交日期</th>
			</tr>
			<c:forEach items="${pageInfo.list}" var="salelist">
				<tr>
					<td>${salelist.saleListId}</td>
					<td>${salelist.bouquetId}</td>
					<td>${salelist.bouquetId}</td>
					<td>${salelist.saleQuantity}</td>
					<td>${salelist.memberName}</td>
					<td><fmt:formatDate value="${salelist.saleDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				</tr>
			</c:forEach>
		</table>
		<div>

			<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
				<c:if test="${page_Num == pageInfo.pageNum }">
					<a href="#">${page_Num }</a>
				</c:if>
				<c:if test="${page_Num != pageInfo.pageNum }">
					<a
						href="${pageContext.request.contextPath}/querySalesRecord?pageNum=${page_Num }">${page_Num }</a>
				</c:if>
			</c:forEach>
		</div>
	</div>
</body>
</html>