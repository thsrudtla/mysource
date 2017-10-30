<%@ page contentType="text/html;charset=utf-8"%>
<!-- result = request.getAttribute("result")라고 한것과 같다. -->
<jsp:useBean scope="request" id="result" class="vo.Person"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>조회결과</h1>
<%-- out.print(result.getName()) --%>
이름 : <jsp:getProperty name="result" property="name"/><br>
나이 : <jsp:getProperty name="result" property="age"/><br>
키 : <jsp:getProperty name="result" property="tall"/><br>
결혼 여부 : <jsp:getProperty name="result" property="marriage"/><br>
<%@ include file="/WEB-INF/menu.jsp" %>

</body>
</html>