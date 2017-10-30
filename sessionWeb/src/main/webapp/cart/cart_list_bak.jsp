<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>장바구니 목록</h1>
<% HashMap<String,Integer> map = (HashMap)session.getAttribute("cart"); 
	if(map == null){%>
장바구니가 비었습니다.
<%}else{%>
TV : <%=map.get("TV") %><br>
DVD : <%=map.get("DVD") %><br>
모니터 : <%=map.get("모니터") %><br>
노트북 : <%=map.get("노트북") %><br>
마우스 : <%=map.get("마우스") %><br>
RAM : <%=map.get("RAM") %><br>
외장메모리 : <%=map.get("외장메모리") %><br>
<%} %>
<a href="/sessionWeb/cart/showItems">쇼핑목록이동</a>
<a href="/sessionWeb/logout">로그아웃</a>
</body>
</html>