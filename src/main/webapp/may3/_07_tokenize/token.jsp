<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<c:forTokens var="alphabet" items="a,b,c,d,e,f,g,h,i,j,k,l,m,n" delims=",">
		${alphabet} 
	</c:forTokens>
	<c:set var="data" value="홍길동, 김길동, 고길동"></c:set>
	
	<c:forTokens var="gildong" items="${data}" delims=", ">
		${gildong} 
	</c:forTokens>
</body>
</html>