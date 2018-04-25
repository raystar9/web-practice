<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Error</title>
</head>
<body>
	에러 페이지입니다.<br>
	<%= exception.getClass().getName() %><br>
	<%= exception.getMessage() %>
</body>
</html>