<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
</head>
<body>
	<%
	Enumeration<String> paramNames = request.getParameterNames();
	while(paramNames.hasMoreElements()){
		String paramName = paramNames.nextElement();
		out.print(paramName + " : " + request.getParameter(paramName) + "<br>");
	}
	
	
	%>
</body>
</html>