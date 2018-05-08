<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
	Context init = new InitialContext();
	String sql = "SELECT ID FROM MEMBER";
	try{
		
		DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		Connection conn = source.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		%>
		<!DOCTYPE html>
		<html>
		<head>
		<title>Insert title here</title>
		</head>
		<body>
			<table border="1">
				<tr><td colspan="2">회원 목록</td></tr>
			
		<%
		while(rs.next()){
			String id = rs.getString("id");
				%>
				<tr><td><a href="memberInfo.jsp?id=<%=id%>"><%=id%></a></td><td><a href="deleteMember.jsp?id=<%=id%>">삭제</a></td></tr>
				<%
		}
		%>
			</table>
		</body>
		</html>
		<%
		
	} catch (Exception e) {
		
	}
	%>
