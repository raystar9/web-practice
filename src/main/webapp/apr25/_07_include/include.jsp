<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
</head>
<body>
	<form action="include2.jsp" method="post">
		<input type="hidden" name="forwardPage" value="include3.jsp">
		<table>
            <tr>
                <td colspan="2">Session에 저장할 내용들</td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>나이</td>
                <td><input type="text" name="age" id="age"></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="addr" id="addr"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="전송"></td>
            </tr>
        </table>
	</form>
</body>
</html>