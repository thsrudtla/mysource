<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/menu.jsp"/>
	<h1>로그인</h1>
	<c:if test="${requestScope.errorMessage == null }">
		${requestScope.errorMessage }
	</c:if>
	<form action="/sessionWeb/login" method="post">
		ID : <input type="text" name="id"><br> Password : <input
			type="password" name="password"><br>
		<button type="submit">로그인</button>
	</form>
</body>
</html>