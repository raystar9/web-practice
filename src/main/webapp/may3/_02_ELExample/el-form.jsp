<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="el-result.jsp">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="checkbox" name="hobby" id="read" value="read"/>독서<input type="checkbox" name="hobby" id="play" value="play"/>놀기</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력" /></td>
			</tr>
		</table>
	</form>
</body>
</html>