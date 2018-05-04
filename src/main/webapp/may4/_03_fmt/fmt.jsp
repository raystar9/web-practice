<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<fmt:setLocale value="ko_KR"/>
	<fmt:bundle basename="test">
		<fmt:message key="name"/><br>
		<fmt:message key="say"/><br>
		<fmt:message key="say2">
			<fmt:param value="Kogildong"/>
			<fmt:param value="Junwoochi"/>
		</fmt:message>
	</fmt:bundle>
	
	
</body>
</html>