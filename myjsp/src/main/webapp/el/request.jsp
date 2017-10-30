<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- Context Root 경로 : application의 시작경로 (myjsp/sessionWeb) --%>
http://ip:port/contextRoot/자원경로.
<h1>Context Root 경로 조회</h1>
<%-- application : 내장객체 - ServletContext --%>
<%= application.getContextPath() %>
<%= application.getInitParameter("rootPath") %> <!-- 초기 파라미터 조회. -->
${initParam.rootPath }<p>
<a href="<%= application.getContextPath() %>/el/el_exam1.jsp">el_exam1.jsp</a> 
<a href="${initParam.rootPath}/el/el_exam2.jsp">el_exam2.jsp</a>
<p>
<form action="${initParam.rootPath }/el/el_exam3.jsp" method="post">
	이름 : <input type="text" name="name"><br>
	나이 : <input type="number" name="age"><br>
	다중선택 :
		C언어 : <input type="checkbox" name="language" value="C">
		자바 : <input type="checkbox" name="language" value="Java">
		파이썬 : <input type="checkbox" name="language" value="파이썬">
	<br>
	<button>전송</button>
</form>
</body>
</html>