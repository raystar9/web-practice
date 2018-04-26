<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>제목</title>
</head>
<body>
	<jsp:useBean id="joinBean" class="javabean.JoinBean" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="joinBean"/>
    <table>
        <tr>
            <td>아이디</td>
            <td><jsp:getProperty property="" name=""/></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="pass" id="pass"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td>성별</td>
            <td>남<input type="radio" name="gender" id="male" value="m">여<input type="radio" name="gender" id="female" value="f"></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email" id="email"></td>
        </tr>
        <tr>
            <td>나이</td>
            <td><input type="text" name="age" id="age"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="전송"><input type="reset" value="다시 작성"></td>
        </tr>
    </table>
</body>
</html>