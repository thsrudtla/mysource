<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.Person"%>
<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%
	//EL을 이용해 Collection(배열/List/Map)의 요소(element) 출력
	//List/배열 - index로 접근. => [] 표기법 사용  ( [index] )
	//Map - key로 접근. => . 표기법, [] 표기법 (.key, ["key"])
	//Set - EL로 요소출력은 할 수 없다.

	String[] names = { "김회원", "이회원", "손회원", "최회원" };
	request.setAttribute("nameList", names); //requestScope에 배열이 담겨져 왔다는 가정으로 보자.

	HashMap map = new HashMap();
	map.put("product name", "텔레비젼");
	map.put("price", 200000); //200000은 Integer 객체다. map은 객체만 넣을 수 있지 primitive 타입은 넣지 못함!
	map.put("owner", new Person("김영수", 33, 178.9, false));
	request.setAttribute("product", map);

	ArrayList<Person> personList = new ArrayList<>();
	//Person객체 5개 add
	personList.add(0, new Person("손경심", 24, 172.0, false));
	personList.add(1, new Person("손염기", 26, 182.5, false));
	personList.add(2, new Person("장윤임", 54, 161.2, true));
	personList.add(3, new Person("손원수", 57, 178.5, true));
	personList.add(4, new Person("세마이", 26, 159.8, false));
	request.setAttribute("personList", personList);
	
	HashSet set = new HashSet();
	set.add("a");
	set.add("b");
	set.add("c");
	session.setAttribute("set",set);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>배열의 값 출력 - EL</h1>
	${requestScope.nameList[0] } - ${requestScope.nameList["1"] } -
	${requestScope.nameList['2'] } - ${requestScope.nameList[7] }
	<%-- 없는 index 접근 : 출력을 하지 않는다. (Exception이 나지 않는다.) --%>

	<h1>Map의 값 출력 - EL</h1>
	<%-- 식별자 규칙에 어긋나는 문자가 포함된 경우는 [] 표기법을 사용해 조회. --%>
	제품명 : ${requestScope.product["product name"] }
	<br> 가격 : ${requestScope.product.price }
	<br> owner 의 이름-나이 : ${requestScope.product.owner.name } -
	${requestScope.product.owner.age }

	<h1>조회결과 - List를 EL로 출력</h1>
	<style>
table {
	border-collapse: collapse;
	width: 500px;
}

td, th {
	border: 1px solid blue;
	text-align: center;
	padding: 5px;
	/* padding : 안쪽 여백, margin : 바깥쪽 여백 */
}

tr:nth-child(even) {
	background-color: lightpink;
	/* table td th{ ~ } 는 table 안에 td 안에 th 에만 적용하는 것이고, */
	/* table, td, ht{ ~ }는 table, td, th 모두 적용하는 것이다. */
}
</style>
	<table>
		<tr>
			<th>이름</th>
			<th>나이</th>
			<th>키</th>
			<th>결혼여부</th>
		</tr>
		<tr>
			<td>${personList[0].name }</td>
			<td>${personList[0].age }</td>
			<td>${personList[0].tall }</td>
			<td>${personList[0].marriage? "기혼":"미혼" }</td>
		</tr>
		<tr>
			<td>${personList[1].name }</td>
			<td>${personList[1].age }</td>
			<td>${personList[1].tall }</td>
			<td>${personList[1].marriage? "기혼":"미혼" }</td>
		</tr>
		<tr>
			<td>${personList[2].name }</td>
			<td>${personList[2].age }</td>
			<td>${personList[2].tall }</td>
			<td>${personList[2].marriage? "기혼":"미혼" }</td>
		</tr>
		<tr>
			<td>${personList[3].name }</td>
			<td>${personList[3].age }</td>
			<td>${personList[3].tall }</td>
			<td>${personList[3].marriage? "기혼":"미혼" }</td>
		</tr>
		<tr>
			<td>${personList[4].name }</td>
			<td>${personList[4].age }</td>
			<td>${personList[4].tall }</td>
			<td>${personList[4].marriage? "기혼":"미혼" }</td>
		</tr>
	</table>
<h1>Set 출력 - EL : Set의 요소들을 조회및 출력은 안됨.</h1>
${sessionScope.set }
</body>
</html>