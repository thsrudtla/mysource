<%@ page contentType="text/html;charset=utf-8"%>
<%--
	요청파라미터들을 attribute의 VO객체에 담아서 실제 요청처리할 Servlet으로 이동
 --%>
<jsp:useBean scope="request" id="person" class="vo.Person"/>
<jsp:setProperty name="person" property="*"/>
<%--
	request.getRequestDispatcher("/addPerson").forward(req,resp);
 --%>
<jsp:forward page="/addPerson"/>