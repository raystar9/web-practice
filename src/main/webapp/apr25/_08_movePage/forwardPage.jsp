<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String pageName = request.getParameter("page");
	String pageJsp = "Page.jsp";
	if(pageName != null){
		%>
		<jsp:forward page='<%=pageName + pageJsp %>'></jsp:forward>
		<%
	}
	%>