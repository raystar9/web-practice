<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그인성공</title>
    <script src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <%=session.getAttribute("id")%>님이 로그인에 성공했습니다.
</body>
</html>