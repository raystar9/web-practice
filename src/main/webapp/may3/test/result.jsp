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
			<td>ID</td>
			<td>${param.id}</td>
		</tr>
		<tr>
			<td>주민등록번호</td>
			<td>${param.jumin1} - ${param.jumin2}</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>${param.email}@${param.domain}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
			<c:choose>
				<c:when test="${param.gender == 'm'}">남성</c:when>
				<c:otherwise>여성</c:otherwise>
			</c:choose>
			</td>
		</tr>
		<tr>
			<td>취미</td>
			<td><c:forEach var="hobbyEach" items="${paramValues.hobby}">${hobbyEach} </c:forEach></td>
		</tr>
		<tr>
			<td>우편번호</td>
			<td>${param.post1}-${param.post2}</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>${param.address}</td>
		</tr>
		<tr>
			<td>자기소개</td>
			<td>${param.introduce}</td>
		</tr>
	</table>
</body>
</html>