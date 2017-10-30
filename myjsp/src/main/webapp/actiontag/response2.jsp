<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>등록결과</h1>
<%@ include file="/WEB-INF/menu.jsp" %>
<h1>등록 결과</h1>
<!-- page -> request -> session -> ... 에서 차례대로 찾아보고 person.name이 없으면 null을 출력한다. -->
<!-- 만약 namef라고 한다면, property가 없기 때문에 NotFoundException이 나기 때문에 주의해야 한다. -->
등록된 이름 : ${person.name }<br>
등록된 나이 : ${person.age }세<br>
등록된 키 : ${person.tall }cm<br>
등록된 결혼 여부 : ${person.marriage ? "기혼" :"미혼"}
</body>
</html>