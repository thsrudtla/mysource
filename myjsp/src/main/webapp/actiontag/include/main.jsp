<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- top.jsp를 포함(include) --%>
<%-- ctrl 누르고 경로에 마우스 갖다대면 (만약 해당경로에 파일이 존재한다면) 밑줄표시가 뜬다. --%>
<%@ include file="/WEB-INF/top.jsp" %>
<jsp:include page="/WEB-INF/top.jsp"/>
<%@ include file="/WEB-INF/menu.jsp" %>
<hr>
main.jsp
</body>
</html>