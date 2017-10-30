<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	1. Session에서 numberList를 조회
	2. 반복문을 이용해 list내의 숫자들을 출력.
 -->
<p>
	<a href="/sessionWeb/stacknums/stack">숫자누적 요청</a>
	<a href="/sessionWeb/stacknums/removenums">누적된 숫자 제거</a>
</p>

<% ArrayList<Integer> list = (ArrayList<Integer>)(session.getAttribute("numberList"));	
	if(list == null || list.isEmpty()){
%>
<h1 style="font-size:70px;">경심누나 돼지</h1>
<%} else{ %>
<ul>
<%
	for(Integer num : list){ %>
			<li><%=num %></li>
<%}//for 종료 %> 
</ul>
<%}//else 종료%>
</body>
</html>