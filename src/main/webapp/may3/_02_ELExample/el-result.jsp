<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>넘어온 이름은 : ${param.name }</h3>
	<h3>넘어온 취미는 : ${paramValues.hobby[0] }, ${paramValues.hobby[1] }</h3>
</body>
</html>