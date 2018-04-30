<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*" %>
    <%
    Connection conn = null;
    
    try{
    	Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		
    	conn = source.getConnection();
    	out.println("<h3>연결되었습니다.</h3>");
    	conn.close();
    } catch (Exception e) {
    	out.println("<h3>연결에 실패했습니다.</h3>");
    	e.printStackTrace();
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