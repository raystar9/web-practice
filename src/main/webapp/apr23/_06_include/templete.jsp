<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>템플릿</title>
	<script src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
	
</head>
<body>
	<% if(session.getAttribute("id") != null){ %>
	<header><%@ include file="header_loggedIn.jsp" %></header>
	<% } else { %>
	<header><%@ include file="header_notLoggedIn.jsp" %></header>
	<% } %>
	<p>여기는 본문입니다. </p>
	<footer><%@ include file="footer.jsp" %></footer>
</body>
</html>