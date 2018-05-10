<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>작성자</td>
			<td>${post.postName}</td>
		</tr>
		<tr>
			<td>글제목</td>
			<td>${post.postSubject }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${post.postContent }</td>
		</tr>
	</table>
	
</body>
</html>