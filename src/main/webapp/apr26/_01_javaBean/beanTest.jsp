<%@page import="javabean.BeanTest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	BeanTest bean = new BeanTest();
	%>
	<%=bean.getName() %>
</body>
</html>