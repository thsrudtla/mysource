<%@page import="vo.Person" isELIgnored="true"%>
<!-- isElIgnored는 EL태그를 그냥 문자로 인식한다는 뜻! -->
<%@ page contentType="text/html;charset=utf-8"%>
<%
	request.setAttribute("result","request - 결과값");
	session.setAttribute("result","session - 결과값");
	request.setAttribute("error message", "XXX 이유로 오류가 발생했습니다.");
	
	session.setAttribute("person", new Person("홍길동",20,182.1,false));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- page -> request -> session -> application 순서대로 찾아보기때문에, request/session을 출력하고 싶으면 따로 명시해줘야 한다!! -->
결과값 : ${result } || ${requestScope.result } || ${sessionScope.result }<br>
<!-- requestScope.error message라고 하면 error message라는 새로운 키워드로 인식되기 때문에(컴파일오류) []대괄호로 지정해줘야 한다. -->
오류메세지 : ${requestScope["error message"] }<br>
<!-- requestScope안에 있는 "error message"가 비었니? 둘다 같은 결과가 나옴. -->
오류메세지 유무 : ${requestScope["error message"] == null } - ${empty requestScope["error message"] }
		  || ${requestScope["error message"] != null } - ${!empty requestScope["error message"] }<br>
		  
Person 나이 : ${sessionScope.person["age"] }세<br>
미성년 여부(19) : ${sessionScope.person.age > 19? "성인":'미성년' } - ${sessionScope.person.age gt 19 ? "성년":'미성년' }
</body>
</html>