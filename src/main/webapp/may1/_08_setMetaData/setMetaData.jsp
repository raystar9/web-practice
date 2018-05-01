<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*"%>
    <%@ page import="java.io.*" %>
	<%
    Connection conn = null;
    String sql = "INSERT INTO CLOBTABLE VALUES(2, EMPTY_CLOB())";
    String sql2 = "SELECT CONTENT FROM CLOBTABLE WHERE NUM=2 FOR UPDATE";
    PreparedStatement pstmt = null;
    ResultSetMetaData rsmd = null;
    StringBuilder sb = new StringBuilder();
	for(int i = 0; i < 10000; i++){
		sb.append("안녕!");
	}
	
    try{
    	Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		
    	conn = source.getConnection();
    	conn.setAutoCommit(false);
    	
    	pstmt = conn.prepareStatement(sql);
    	pstmt.execute();
    	pstmt.close();
    	
    	pstmt = conn.prepareStatement(sql2);
    	ResultSet rs = pstmt.executeQuery();
    	if(rs.next()){
    		Clob clob = rs.getClob("content");
    		BufferedWriter writer = new BufferedWriter(clob.setCharacterStream(1));
    		writer.write(sb.toString());
    		writer.close();
    	}
    	conn.commit();
    	conn.setAutoCommit(false);
    	out.println("프로시저가 실행되었습니다.");
    } catch (Exception e) {
    	out.println("<h3>예외가 발생했습니다.</h3>");
    	e.printStackTrace();
    } finally {
    	if(pstmt != null){
    		try {
    			pstmt.close();
    		} catch(SQLException e) {
    			e.printStackTrace();
    		}
    	}
    	if(conn != null) {
    		try {
    			conn.close();
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    	}
    }
	%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
</body>
</html>
