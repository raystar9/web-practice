<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>로그인 페이지</title>
    <script src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
    <script>
        if("<%= session.getAttribute("error")%>" == "incorrect_id"){
            alert("아이디가 잘못되었습니다.");
        } else if("<%= session.getAttribute("error")%>" == "incorrect_pw"){
            alert("비밀번호가 잘못되었습니다.");
        }
    </script>
</head>
<body>
    <form action="login_ok" method="post">
        <input type="text" name="id" id="id"><br>
        <input type="password" name="passwd" id="password"><br>
        <div><input type="submit" value="전송"><input type="reset"></div>
    </form>
</body>
</html>