<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	보고싶은 페이지 선택 
	<form action="forwardPage.jsp">
		<select name="page">
			<option value="newItem">신상 페이지</option>
			<option value="bestItem">베스트 상품 페이지</option>
			<option value="usedItem">중고 페이지</option>
		</select>
		<input type="submit" value="이동">
	</form>
	
</body>
</html>