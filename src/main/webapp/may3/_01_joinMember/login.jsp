<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그인 페이지</title>
</head>
<body>
    <form action="loginProcess.jsp" method="post">
        아이디<input type="text" name="id" id="id"><br>
        비밀번호<input type="password" name="pass" id="password"><br>
        <div><input type="submit" value="전송"><input type="reset"></div>
    </form>
    <input type="button" onclick="location.href='joinForm.jsp'" value="회원가입">
</body>
</html>