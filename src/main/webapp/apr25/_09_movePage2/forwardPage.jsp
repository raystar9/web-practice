<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<p>인클루드입니다.</p>
    <%
	String pageName = request.getParameter("page");
	String pageJsp = ".jsp";
	if(pageName != null){
		%>
		<jsp:include page='<%=pageName + pageJsp %>'></jsp:include>
		<%
	}
	%>
</body>
</html>