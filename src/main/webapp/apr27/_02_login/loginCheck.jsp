<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
    <%=session.getAttribute("id") %>님이 로그인하였습니다.<br><br>
    <%=application.getAttribute("remember") %>
    <a href="logout.jsp">로그아웃하기</a>
</body>
</html>