<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>로그인 페이지</title>
    <script src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <form action="/web-practice/apr24/login" method="post">
        아이디<input type="text" name="id" id="id"><br>
        비밀번호<input type="password" name="pass" id="password"><br>
        <div><input type="submit" value="전송"><input type="reset"></div>
    </form>
</body>
</html>