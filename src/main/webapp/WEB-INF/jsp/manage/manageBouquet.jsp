<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE table PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/form.css">
</head>
<body>
	<div align="center">
		<table class=datalist summary="list of members in EE Studay">
			<tr>
				<th scope="col">编号</th>
				<th scope="col">名称</th>
				<th scope="col">价格</th>
				<th scope="col">用途</th>
				<th scope="col">花材</th>
				<th scope="col">图片</th>
				<th scope="col">花语</th>
				<th scope="col">上架日期</th>
				<th scope="col">操作</th>
			</tr>

			<c:forEach items="${pageInfo.list}" var="bouquet">
				<tr>
					<td>${bouquet.bouquetId}</td>
					<td>${bouquet.name}</td>
					<td>${bouquet.price}</td>
					<td>${bouquet.type}</td>
					<td>${bouquet.material}</td>
					<td><img
						src='<c:url value="/images/flowers/${ bouquet.picture}"></c:url>'
						width="106" height="106"></img></td>
					<td>${bouquet.meanings}</td>
					<td><fmt:formatDate value="${bouquet.date}"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td><a
						href="${pageContext.request.contextPath}/editBouquet?bouquetId=
						${bouquet.bouquetId}&pageNum=${pageInfo.pageNum }">编辑</a>
						<a
						href="${pageContext.request.contextPath}/deleteBouquet?bouquetId=
						${bouquet.bouquetId}&pageNum=${pageInfo.pageNum }">下架</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="${pageContext.request.contextPath}/queryBouquet?pageNow=1">首页</a>
		<c:if test="${pageInfo.hasPreviousPage }">
			<a
				href="${pageContext.request.contextPath}/queryBouquet?pageNow=${pageInfo.pageNum-1}"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a>
		</c:if>
		<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
			<c:if test="${page_Num == pageInfo.pageNum }">
				<a href="#">${page_Num }</a>
			</c:if>
			<c:if test="${page_Num != pageInfo.pageNum }">
				<a
					href="${pageContext.request.contextPath}/queryBouquet?pageNow=${page_Num }">${page_Num }</a>
			</c:if>
		</c:forEach>
		<c:if test="${pageInfo.hasNextPage }">
			<a
				href="${pageContext.request.contextPath}/queryBouquet?pageNow=${pageInfo.pageNum+1 }"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a>
		</c:if>
		<a
			href="${pageContext.request.contextPath}/queryBouquet?pageNow=${pageInfo.pages}">末页</a></li>
	</div>
</body>
</html>