<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*"%>
    <%@ page import="java.io.*" %>
	<%
    Connection conn = null;
    String sql = "SELECT CONTENT FROM CLOBTABLE WHERE NUM=2 FOR UPDATE";
    PreparedStatement pstmt = null;
    try{
    	Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		
    	conn = source.getConnection();
    	conn.setAutoCommit(false);
    	
    	pstmt = conn.prepareStatement(sql);
    	ResultSet rs = pstmt.executeQuery();

    	if(rs.next()){
    		Clob clob = rs.getClob("content");
    		BufferedReader reader = new BufferedReader(clob.getCharacterStream());
    		char[] buf = new char[1024];
    		StringBuilder sb = new StringBuilder();
    		int readcnt;
    		while((readcnt = reader.read(buf, 0, 1024)) != -1){
    			System.out.println("readcnt = " + readcnt);
    			sb.append(buf, 0, readcnt);
    		}
    		reader.close();

        	out.println(sb.toString());
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
