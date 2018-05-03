<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "SELECT ID, NAME, AGE, GENDER, EMAIL FROM MEMBER WHERE ID=?";
	try{
		Context init = new InitialContext();
		DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = source.getConnection();
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, request.getParameter("id"));
		System.out.println(request.getParameter("id"));
		ResultSet rs = pstmt.executeQuery();
		%>
		<!DOCTYPE html>
		<html>
		<head>
		<title>Insert title here</title>
		</head>
		<body>
		<table border="1">
		<%
		while(rs.next()){
			String id = rs.getString("id");
			String name = rs.getString("name");
			int age = rs.getInt("age");
			String gender = "";
			if(rs.getString("gender").equals("m")){
				gender = "남성";
			} else {
				gender = "여성";
			}
			String email = rs.getString("email");
			%>
			<tr><td>id</td><td><%=id%></td></tr>
			<tr><td>name</td><td><%=name%></td></tr>
			<tr><td>age</td><td><%=age%></td></tr>
			<tr><td>gender</td><td><%=gender%></td></tr>
			<tr><td>email</td><td><%=email%></td></tr>
			<%
		}
	} catch (Exception e) {
		
	}
	%>
</table>
	
</body>
</html>