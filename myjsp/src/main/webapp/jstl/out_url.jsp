<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>out 태그</h1>
<br>은 엔터입니다. <h2>는 제목태그입니다.</h2>
&lt;br&gt;은 엔터입니다.
<c:out value="<br>은 엔터입니다.--<out>태그로 출력"/><br>
<%-- <c:set var="message" scope="request" value="이것은 메세지입니다."/> --%>
<c:out value="${requestScope.message }" default="메세지가 없습니다."/> <!-- value가 null이면 default값을 출력하고, 아니면 value값을 출력한다. -->
<h1>url 태그</h1>
<c:url value="/jstl/url_response.jsp" var="myurl">
	<%-- 요청 파라미터 등록 : url 뒤에 QueryString으로 추가 - URL Encoding 처리--%>
	<c:param name="name">홍길동</c:param>
</c:url>

<a href="/myjsp/jstl/url_response.jsp?name='홍길동'">url_response.jsp - 원래방식</a>
<a href='<c:url value="/jstl/url_response.jsp"/>'>url-response.jsp - url 태그이용(root app을 자동으로 찾아줌 - c:url의 특징)</a>
<a href="${myurl }">url_response.jsp</a>
</body>
</html>