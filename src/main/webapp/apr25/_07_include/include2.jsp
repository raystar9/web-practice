<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>include2.jsp입니다</h3>
	<jsp:include page='<%=request.getParameter("forwardPage") %>'>
		<jsp:param value="010-1234-5768" name="tel"/>
		<jsp:param value="사랑이" name="alias"/>
	</jsp:include>
	<%="include2.jsp 자바입니다." %>
</body>
</html>