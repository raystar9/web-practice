<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="put">
		이름 : <input type="text" name="name" id="name" />
		<input type="hidden" name="_method" value="put" />
		<input type="submit" value="전송" />
	</form>
</body>
</html>