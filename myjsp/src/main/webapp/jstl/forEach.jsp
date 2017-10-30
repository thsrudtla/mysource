<%@page import="java.util.HashMap"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Arrays"%>
<%@page import="vo.Person"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String[] nameList = { "홍길동", "박영희", "이철희", "박영수" };
	request.setAttribute("nameList", nameList);

	List list = Arrays.asList(new Person("이름1", 20, 180.2, false), new Person("이름2", 30, 170.2, false),
			new Person("이름3", 40, 180.6, true), new Person("이름4", 50, 180.9, false));
	session.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름
	<br>
	<ul>
		<%-- "${requestScope.nameList }" 를 name이라는 객체에 저장하여 EL 방식으로 name을 출력한다. --%>
		<c:forEach items="${requestScope.nameList }" var="name">
			<li>${name }</li>
		</c:forEach>
	</ul>
	<h1>목록</h1>
	<%-- varStatus="변수명" - 반복횟수를 제공할 변수 선언
	${변수명.count} - 1부터 시작, ${변수명.index} - 0부터 시작
--%>
	<c:forEach items="${sessionScope.list }" var="person" varStatus="cnt">
		${cnt.count}-${cnt.index} : 이름 : ${person.name }	나이 : ${person.age }	키 :	${person.tall}	결혼여부 : ${person.marriage?"기혼":"미혼" }<br>
	</c:forEach>
	<%
		HashSet set = new HashSet();
		set.add("a");
		set.add("b");
		set.add("c");
		request.setAttribute("set", set);
	%>
	<h2>Set 내용 출력</h2>
	<ul>
		<c:forEach items="${requestScope.set }" var="sets" varStatus="cnt">
			${cnt.count } : ${sets }<br>
		</c:forEach>
	</ul>
	<%
		HashMap map = new HashMap();
		map.put("name", "홍길동");
		map.put("age", 20);
		map.put("address", "경기도 성남시 분당구 삼평동");
		request.setAttribute("map", map);
	%>
	<h1>Map 반복</h1>
	<c:forEach items="${requestScope.map }" var="entry">
		<c:if test="${entry.key != 'address' }">
			키 : ${entry.key }  값 : ${entry.value }<br>
		</c:if>
	</c:forEach>
<h2>단순반복 - 특정 횟수만큼 반복</h2>
<c:forEach begin="1" end="10" var="num" step="3">
	${num } : 안녕하세요<br>
</c:forEach>
</body>
</html>	