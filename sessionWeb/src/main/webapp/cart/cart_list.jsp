<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table{
	border-collapse: collapse;
	width: 500px;
}

td, th {
	border: 1px solid black;
	text-align: center;
	padding: 5px;
}
</style>
<body>
	<jsp:include page="/menu.jsp" />
	<h1>장바구니 목록</h1>
	<c:if test="${sessionScope.cart == null }">
		장바구니가 비었습니다.
	</c:if>
	<table>
	<thead>
		<tr>
			<th>제품</th>
			<th>갯수</th>
		</tr>
	</thead>
	<tbody>
			<c:forEach items="${sessionScope.cart }" var="cart">
		<tr>
			<td>
			${cart.key }
			</td>
			<td>
			${cart.value }
			</td>
		</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/sessionWeb/cart/showItems">쇼핑목록이동</a>
	<a href="/sessionWeb/logout">로그아웃</a>
</body>
</html>