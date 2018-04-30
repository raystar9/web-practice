<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ page import="java.sql.*" 
    %><%
    Connection conn = null;
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    
    Boolean isConnect = false;
    try{
    	Class.forName(driver);
    	
    	conn = DriverManager.getConnection(url, "scott", "tiger");
    	isConnect = true;
    	conn.close();
    } catch (Exception e) {
    	isConnect = false;
    }
    
    System.out.println(isConnect);
    
    %>
	<!DOCTYPE html>
	<html>
	<head>
	<title>타이틀입니다.</title>
	</head>
	<body>
		<h3>
	<%
	if(isConnect) {
	%> 연결되었습니다. <%
	} else { 
	%> 연결에 실패했습니다.<%
	}
	%></h3>
</body>
</html>