<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<fmt:setLocale value="en_US"/>
	<jsp:useBean id="date" class="java.util.Date"/>
	<fmt:formatNumber value="50000" type="currency"/><br>
	<fmt:formatNumber value="0.15" type="percent"/><br>
	<fmt:formatNumber value="500567300" pattern="###,###,###"/><br>
	<fmt:formatDate value="${date}" type="date"/><br>
	<fmt:formatDate value="${date}" type="time"/><br>
	<fmt:formatDate value="${date}" type="both" timeStyle="short" dateStyle="short"/><br>
	<fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long"/><br>
	
</body>
</html>