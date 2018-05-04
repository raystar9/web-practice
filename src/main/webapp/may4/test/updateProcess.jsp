<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	String queryString = "SELECT PASSWORD FROM MEMBER WHERE ID=?";
	String queryString2 = "UPDATE MEMBER SET PASSWORD=?, NAME=?, AGE=?, GENDER=?, EMAIL=? WHERE ID=?";
	try {
		
		Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
    	conn = source.getConnection();
    	pstmt = conn.prepareStatement(queryString);
    	pstmt2 = conn.prepareStatement(queryString2);
    	pstmt.setString(1, (String)session.getAttribute("id"));
    	ResultSet rs = pstmt.executeQuery();
    	
    	if(rs.next()){
    		String pass = rs.getString(1);
    		if(!request.getParameter("pass").equals(pass)){
    			out.println("비밀번호가 일치하지 않습니다.");
    		} else {
    	    	
    	    	pstmt2.setString(1, request.getParameter("pass-to"));
    	    	pstmt2.setString(2, request.getParameter("name"));
    	    	pstmt2.setInt(3, Integer.parseInt(request.getParameter("age")));
    	    	pstmt2.setString(4, request.getParameter("gender"));
    	    	pstmt2.setString(5, request.getParameter("email"));
    	    	pstmt2.setString(6, (String)session.getAttribute("id"));
    	    	if(pstmt2.executeUpdate() != 0){
    	    		out.println("업데이트에 성공했습니다. 3초 후 메인페이지로 돌아갑니다.");
    	    		%><script>
						setTimeout(()=>{
							location.href='main.jsp';
						}, 3000);
					</script><%
    	    	}
    		}
    	}
	}catch (Exception e) {
		
	} finally {
		try {
			pstmt2.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
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