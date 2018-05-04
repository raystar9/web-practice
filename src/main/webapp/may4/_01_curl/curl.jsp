<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<c:url var="send" value="http://localhost:8088/web-practice/may4/_01_curl/result.jsp">
		<c:param name="id" value="start"></c:param>
		<c:param name="name" value="홍길동"></c:param>
	</c:url>
	<a href="${send}">param전달</a>
</body>
</html>