<%@page import="vo.Person"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%-- JSTL 사용 : 1. 	2. 각 JSP에서 tableib 지시자 설정. --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 새로운 Person 객체 저장 --%>
<c:set scope="session" var="loginInfo"
	value='<%=new Person("홍길동", 30, 170.5, false)%>' />
<%-- Person 객체의 age 수정 -> 15세로 수정되었기 때문에, 성인용품 메뉴는 사라진다. --%>
<c:set target="${sessionScope.loginInfo }" property="age" value="15" />
<%-- loginInfo 안의 객체를 지웠기 때문에, 메뉴 1이 나오면 된다. --%>
<c:remove scope="session" var="loginInfo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 사용자가 로그인한 상태이면 메뉴2를 보여주고,
	 	     로그인 하지 않은 상태이면 메뉴1를 보여준다. 
	 	  (고객센터 - 공통메뉴)
	 	   로그인 여부 : session 영역에 loginInfo 란 이름의 속성이 있으면 로그인 한 것이다. --%>
	<c:choose>
	<%-- 따옴표 전후로는 반드시 공백이 생기지 않도록 해야한다. 결과가 true가 나왔는데 원하는 구문이 실행되지 않았다면 공백때문임! --%>
		<c:when test="${empty sessionScope.loginInfo }">
			메뉴 1 : 로그인 회원가입
		</c:when>
		<c:otherwise>
			메뉴 2: 로그아웃 마이페이지
			<%-- 로그인한 사람의 나이가 20세 이상이면 성인용품 메뉴를 보여준다. --%>
			<c:if test="${sessionScope.loginInfo.age >= 20 }">
			성인용픔
			</c:if>
		</c:otherwise>
	</c:choose>
	고객센터
</body>
</html>