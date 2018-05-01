<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import="javax.naming.*"
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
	<body>
		<table border="1">
			<tr>
				<td>번호</td>
				<td>이름</td>
			</tr>
<%
    Connection conn = null;
    String sql = "SELECT * FROM STUDENT ORDER BY NUM";
    Statement stmt = null;
    try{
    	Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		
    	conn = source.getConnection();
    	stmt = conn.createStatement();
    	ResultSet rs = stmt.executeQuery(sql);
    	while(rs.next()){
    		%>
    		<tr>
				<td><%=rs.getInt(1) %></td>
				<td><%=rs.getString(2) %></td>
			</tr>
			<%
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
	</table>
</body>
</html>
