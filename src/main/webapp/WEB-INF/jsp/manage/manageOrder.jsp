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
</head>
<body>
	<div class="dropdown">
		<form action="${pageContext.request.contextPath}/order/queryList">
			<select name="delivered" class="dropdown-select"
				onchange="javascript:this.form.submit();">
				<c:choose>
					<c:when test="${! delivered}">
						<option value="false">待发货的订单</option>
						<option value="true">已发货的订单</option>
					</c:when>
					<c:otherwise>
						<option value="true">已发货的订单</option>
						<option value="false">待发货的订单</option>
					</c:otherwise>
				</c:choose>

			</select>
		</form>
	</div>
	<div align="center">
		<table class=datalist summary="list of me.mbers in EE Studay">
			<tr>
				<th scope="col">序号</th>
				<th scope="col" width="100">客户名</th>
				<th scope="col" width="100">客户级别</th>
				<th scope="col" width="100">订购花束名</th>
				<th scope="col" width="100">花束价格</th>
				<th scope="col" width="100">订购数量</th>
				<th scope="col" width="100">订购日期</th>
				<th scope="col" width="100">操作</th>
			</tr>
			<!-- 根据日期是否超过7天变颜色 -->
			<c:forEach items="${orderList}" var="order" varStatus="status">
			<c:choose>
				<c:when test="${order.over7day}">
					<tr class=altrow>
				</c:when>
				<c:otherwise><tr ></c:otherwise>
			</c:choose>
					<td>${status.count}</td>
					<td ><a href="${pageContext.request.contextPath}/queryMembers?searchName=${order.memberName}&searchType=all">${order.memberName}</a></td>
					<td>${order.memberRank}</td>
					<td>${order.bouquetName}</td>
					<td>${order.price}</td>
					<td>${order.orderQuantity}</td>
					<td><fmt:formatDate value="${order.orderDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					<td><c:if test="${! delivered}">
							<a href='
							<c:url value="/order/deliver">
								<c:param name="orderId" value="${order.orderId}"></c:param>
								<c:param name="bouquetName" value="${order.bouquetName}"></c:param>
								<c:param name="memberName" value="${order.memberName}"></c:param>
								<c:param name="orderQuantity" value="${order.orderQuantity}"></c:param>
							</c:url>'
							>发货</a>&nbsp;
				<a href="<c:url value="/order/reject">
								<c:param name="orderId" value="${order.orderId}"></c:param>
								<c:param name="bouquetName" value="${order.bouquetName}"></c:param>
								<c:param name="memberName" value="${order.memberName}"></c:param>
								<c:param name="orderQuantity" value="${order.orderQuantity}"></c:param>
							</c:url>">拒接</a>
						</c:if></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>