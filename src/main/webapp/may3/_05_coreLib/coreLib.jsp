<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<c:set var="test" value="Hello JSTL!"/>
	<h3>
		<c:out value="${test}"/>
	</h3>
	<c:catch var="error">
		<%=10/0 %>
	</c:catch>
	<h3>
		<c:out value="${error.toString()}"/>
	</h3>
	<c:choose>
		<c:when test="${10+50==10 })">
			참입니다
		</c:when>
		<c:otherwise>
			거짓입니다.
		</c:otherwise>
	</c:choose>
	<c:set var="a" value="2"/>
	<c:choose>
		<c:when test="${a == 1}">
			1입니다.  
		</c:when>
		<c:when test="${a == 2}">
			2입니다.
		</c:when>
		<c:otherwise>
			1또는 2가 아닙니다.
		</c:otherwise>
	</c:choose>
	<c:set var="a" value="${a + 1}"/>
	<c:out value="${a }"/>
	<c:forEach var="test2" begin="1" end="10" step="2"><p>${test2 } </p></c:forEach>
	<% pageContext.setAttribute("nameList", new String[] {"홍길동", "임꺽정", "신사임당", "일지매"}); %>
	<c:forEach var="name" items="${pageScope.nameList}">
		${name}
	</c:forEach>
	
</body>
</html>