<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("email", request.getParameter("email"));
		session.setAttribute("addr", request.getParameter("addr"));
		session.setAttribute("phone", request.getParameter("phone"));
	%>
    <a href="result.jsp">결과 보기</a>
</body>
</html>