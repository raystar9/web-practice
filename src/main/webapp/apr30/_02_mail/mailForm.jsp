<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="mailSend.jsp" method="post">
	    <table border="1">
	        <tr>
	            <td colspan="2">자바메일 보내기</td>
	        </tr>
	        <tr>
	            <td>보내는 사람 메일</td>
	            <td><input type="text" name="sender" id="sender"></td>
	        </tr>
	        <tr>
	            <td>받는 사람 메일</td>
	            <td><input type="text" name="receiver" id="receiver"></td>
	        </tr>
	        <tr>
	            <td>제목</td>
	            <td><input type="text" name="subject" id="subject"></td>
	        </tr>
	        <tr>
	            <td>내용</td>
	            <td><textarea name="content" id="content" cols="40" rows="10"></textarea></td>
	        </tr>
	        <tr>
	            <td colspan="2"><input type="submit" value="보내기"></td>
	        </tr>
	    </table>
    </form>
</body>
</html>