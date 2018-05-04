<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
		<html>
		<head>
		<title>Insert title here</title>
		</head>
		<body>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "DELETE FROM MEMBER WHERE ID=?";
	try{
		Context init = new InitialContext();
		DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = source.getConnection();
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, request.getParameter("id"));
		if(pstmt.executeUpdate() != 0){
			out.println("성공적으로 삭제했습니다. 잠시 후 메인으로 돌아갑니다.");
			%><script>setTimeout(()=>{
				location.href="main.jsp";
			},2000)</script>
		<%
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	
</body>
</html>