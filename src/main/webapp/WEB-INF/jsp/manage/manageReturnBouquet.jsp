<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<div align="center">
		<table class=datalist summary="list of members in EE Studay">
			<caption>退货请求</caption>
			<tr>
				<th scope="col">&nbsp;</th>
				<th scope="col">客户名</th>
				<th scope="col">级别</th>
				<th scope="col">订购花束名</th>
				<th scope="col">花束价格</th>
				<th scope="col">订购数量</th>
				<th scope="col">订购日期</th>
				<th scope="col">订单状态</th>
				<th scope="col">操作</th>
			</tr>

			<c:forEach items="${orderList}" var="order" varStatus="status">

				<tr>
					<td>${status.count}</td>
					<td><a
						href="${pageContext.request.contextPath}/queryMembers?searchName=${order.memberName}&searchType=all">${order.memberName}</a></td>
					<td>${order.memberRank}</td>
					<td>${order.bouquetName}</td>
					<td>${order.price}</td>
					<td>${order.orderQuantity}</td>
					<td><fmt:formatDate value="${order.orderDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					<td>${order.isdelivered?'已发货':'未发货'}</td>
					<td><a
						href='
							<c:url value="/order/agreeReturn">
								<c:param name="orderId" value="${order.orderId}"></c:param>
								<c:param name="bouquetName" value="${order.bouquetName}"></c:param>
								<c:param name="memberName" value="${order.memberName}"></c:param>
								<c:param name="orderQuantity" value="${order.orderQuantity}"></c:param>
							</c:url>'>同意</a>&nbsp;
						<a
						href="<c:url value="/order/rejectReturn">
								<c:param name="orderId" value="${order.orderId}"></c:param>
								<c:param name="bouquetName" value="${order.bouquetName}"></c:param>
								<c:param name="memberName" value="${order.memberName}"></c:param>
								<c:param name="orderQuantity" value="${order.orderQuantity}"></c:param>
							</c:url>">拒绝</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>