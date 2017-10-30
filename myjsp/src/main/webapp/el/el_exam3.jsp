<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>요청파라미터 출력 - EL</h1>
name : ${param.name }<br> <%-- param.요청파라미터이름 --%>
age : ${param.age }<br>

language : ${param.language }<br>
<%-- paramValues.요청파라미터이름 : request.getParameterValues() --%>
${paramValues.language[0] } ${paramValues.language[1] } ${paramValues.language[2] }
</body>
</html>