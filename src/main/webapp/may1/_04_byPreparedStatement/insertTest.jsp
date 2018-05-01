<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*" %>
    <%
    Connection conn = null;
    String del = "DELETE FROM STUDENT";
    String sql = "INSERT INTO STUDENT(NUM, NAME) VALUES(?, '홍길동')";
    PreparedStatement pstmt = null;
    try{
    	Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		
    	conn = source.getConnection();
    	pstmt = conn.prepareStatement(del);
    	pstmt.execute();
    	pstmt = conn.prepareStatement(sql);
    	
    	for(int i = 0; i < 10; i++){
    		pstmt.setInt(1, i);
    		pstmt.executeUpdate();
    		out.println("<h3>쿼리문 : index "+ i +" 가 추가되었습니다.</h3>");
    	}
    	conn.close();
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