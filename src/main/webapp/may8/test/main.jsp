<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<%String id = "";
	if(session.getAttribute("id") != null){
		id = session.getAttribute("id").toString();
	}
	%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<header>
	<%@include file="header.jsp" %>
</header>
<section>
	<%
	if(id.equals("admin")){
	%>
	<a href="memberList.jsp">관리자 모드 접속(회원 정보)</a>
	<%
	}
	%>
</section>
</body>
</html>