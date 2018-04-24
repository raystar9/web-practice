<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	Enumeration<String> initParamsNames = config.getInitParameterNames();
	while(initParamsNames.hasMoreElements()){
		String initParamName = initParamsNames.nextElement();
	%>
	<%=initParamName %> : <%=config.getInitParameter(initParamName) %><br>
	<%
	}
	%>
	
</body>
</html>