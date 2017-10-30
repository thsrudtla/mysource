<%@page import="java.util.Date"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setAttribute("current", new Date());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
현재일시 : ${requestScope.current }<br>
<h1>fmt를 이용해 일시 출력</h1>
<%--
	setLocale 태그로 지역을 설정하면 formaDate/formatNumber의 기본 형식이 그 지역의 형식으로 바뀐다.
	지역 코드 형식 : 언어코드_국가코드 
	언어코드 : ISO-639, 국가코드 : ISO-3166
	주요코드들
	- 우리나라 : ko_KR
	- 중국 : zh_CN, zh_TW(대만)
	- 미국 : en_US
	- 영국 : en_GB
	- 일본 : ja_JP 
 --%>
<fmt:setLocale value="en_US"/>
<fmt:setLocale value="zh_CN"/>

<fmt:formatDate value="${requestScope.current }" type="date"/><br>
<fmt:formatDate value="${requestScope.current }" type="time"/><br>
<fmt:formatDate value="${requestScope.current }" type="both"/><br>

<fmt:formatDate value="${requestScope.current }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/>
<br>
<fmt:formatDate value="${requestScope.current }" pattern="yyyy/ MM/ dd일 HH:mm:ss"/>
</body>
</html>