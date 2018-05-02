<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	String queryString = "INSERT INTO MEMBER VALUES(?, ?, ?, ?, ?, ?)";
	try {
		Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
    	conn = source.getConnection();
    	
    	pstmt = conn.prepareStatement(queryString);
    	pstmt.setString(1, request.getParameter("id"));
    	pstmt.setString(2, request.getParameter("pass"));
    	pstmt.setString(3, request.getParameter("name"));
    	pstmt.setString(4, request.getParameter("age"));
    	pstmt.setString(5, request.getParameter("gender"));
    	pstmt.setString(6, request.getParameter("email"));
    	
    	if(pstmt.executeUpdate() != 0){
    		out.println("회원가입 성공");	
    	}
	}catch (Exception e) {
		
	} finally {
		try {
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}





%>