<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="/web-practice/board/writer" method="post">
	<table border=1>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer" id="writer" /></td>
		</tr>
		<tr>
			<td>비밀번호</td><td><input type="text" name="password" id="password" /></td>
		</tr>
		<tr>
			<td>글제목</td><td><input type="text" name="title" id="title" /></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="content" id="content" cols="30" rows="10"></textarea></td>
		</tr>
	</table>
	<input type="submit" value="전송" />
</form>
</body>
</html>