<%@ page contentType="text/html;charset=utf-8" import="java.text.*"%>

<%!
//선언자 태그 - instance 변수, 메소드(jspInit, jspDestroy) 선언/구현
private int count = 100000;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style=color:blue>WELCOME</h1>
<%
	//프로그램 로직 - 스크립트 태그
	int size = (int)(Math.random()*50+1);//1~50
	DecimalFormat format = new DecimalFormat("#,###");
	String countStr = format.format(++count);
%>
<span style="font-size:<%=size%>px;"><%= countStr %> 번째 방문자 입니다.</span>
<%@ include file="/WEB-INF/menu.jsp" %>

</body>
</html>
<%-- http://127.0.0.1:8088/myjsp/scripttag/counter.jsp --%>
<!-- HTML<%=size%> 주석 -->