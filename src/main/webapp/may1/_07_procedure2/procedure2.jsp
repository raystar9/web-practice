<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*"%>
	<%
    Connection conn = null;
    String sql = "SELECT * FROM STUDENT";
    PreparedStatement pstmt = null;
    ResultSetMetaData rsmd = null;
    try{
    	Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		
    	conn = source.getConnection();
    	
    	pstmt = conn.prepareStatement(sql);
    	ResultSet rs = pstmt.executeQuery();
    	rsmd = rs.getMetaData();
    	out.println("컬럼 수 : " + rsmd.getColumnCount()+ "<br>");
    	for(int i = 0; i < rsmd.getColumnCount(); i++){
    		out.println((i+1) + "번째 컬럼의 이름 : " + rsmd.getColumnName(i+1) + "<br>");
    		out.println((i+1) + "번째 컬럼의 타입명 : " + rsmd.getColumnTypeName(i+1)+ "<br>");
    	}
    	
    	pstmt.execute();
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
