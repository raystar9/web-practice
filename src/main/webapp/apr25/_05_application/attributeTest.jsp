<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	if(name != null && id != null){
		application.setAttribute("name", name);
		application.setAttribute("id", id);
	}
	%>
	<h3><%=name %>님 반갑습니다.</h3>
	<h4><%=name %>님의 아이디는 <%=id %>입니다.</h4>
	<form action="attributeTest2.jsp" method="post">
		<table>
            <tr>
                <td colspan="2">Session에 저장할 내용들</td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email" id="email"></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="addr" id="addr"></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" name="phone" id="phone"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="전송"></td>
            </tr>
        </table>
	</form>
</body>
</html>