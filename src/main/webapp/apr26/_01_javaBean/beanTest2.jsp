<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="javabean.BeanTest" scope="page"></jsp:useBean>
	<jsp:setProperty property="name" name="bean" param="name"/>
	<jsp:getProperty property="name" name="bean"/>
</body>
</html>