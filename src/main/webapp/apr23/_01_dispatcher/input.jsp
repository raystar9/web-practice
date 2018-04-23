<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>dispatcher방식</title>
    <script src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <form action="DispatcherServlet" method="GET">
        <b>좋아하는 음식은 무엇인가요?</b>
        <br>
        <input type="text" name="food" id="food">
        <input type="submit" value="전송">
    </form>
</body>
</html>