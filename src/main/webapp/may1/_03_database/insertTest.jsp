<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*" %>
    <%
    Connection conn = null;
    String sql = "INSERT INTO STUDENT(NUM, NAME) VALUES(11, '홍길동')";
    Statement stmt = null;
    try{
    	Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		
    	conn = source.getConnection();
    	stmt = conn.createStatement();
    	int result = stmt.executeUpdate(sql);
    	out.println("<h3>쿼리문 : "+ sql +"</h3>");
		if(result != 0) {
			out.println("<h3>성공적으로 쿼리문을 실행했습니다.</h3>");
		}
    	conn.close();
    } catch (Exception e) {
    	out.println("<h3>예외가 발생했습니다.</h3>");
    	e.printStackTrace();
    } finally {
    	if(stmt != null){
    		try {
    			stmt.close();
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