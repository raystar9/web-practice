<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>redirect.jsp</title>
</head>
<body>
    request 속성 값 : <%= request.getAttribute("food")%>
    session 속성 값 : <%= session.getAttribute("food")%>
</body>
</html>