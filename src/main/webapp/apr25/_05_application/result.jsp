<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	out.print("이름 : " + application.getAttribute("name") + "<br>");
	out.print("아이디 : " + application.getAttribute("id") + "<br>");
	out.print("이메일 : " + session.getAttribute("email") + "<br>");
	out.print("주소 : " + session.getAttribute("addr") + "<br>");
	out.print("전화번호 : " + session.getAttribute("phone") + "<br>");
%>
</body>
</html>