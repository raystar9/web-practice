<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>넘어온 이름은 : ${param.name }</h3>
	<h3>넘어온 취미는 : <c:forEach var="hobby" items="${paramValues.hobby}">${hobby} </c:forEach></h3>
	<% pageContext.setAttribute("nameList", new String[] {"홍길동", "임꺽정", "신사임당", "일지매"}); %>
	<c:forEach var="name" items="${nameList }" begin="2" end="3" varStatus="status">
		<p>${status.count }번째 - index[${status.index }] : ${name }</p>
	</c:forEach>
</body>
</html>