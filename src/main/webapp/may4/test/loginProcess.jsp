<%@page import="javax.naming.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "SELECT PASSWORD FROM MEMBER WHERE ID=?";
	try {
		Context init = new InitialContext();
    	DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
    	
    	conn = source.getConnection();
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, request.getParameter("id"));
    	
    	ResultSet rs = pstmt.executeQuery();
    	%><script><%
    	if(rs.next()) {
    		if(rs.getString(1).equals(request.getParameter("pass"))){
    			%>
    			alert("로그인에 성공했습니다.");
    			location.href='main.jsp';
    			<%
    			session.setAttribute("id", request.getParameter("id"));
    		} else {
    			%>
    			alert("비밀번호가 틀렸습니다.");
    			history.back();
    			<%
    		}
    	} else {
    		%>
			alert("존재하지 않는 회원입니다.");
			history.back();
			<%
    	}
    	%></script><%
	} catch (Exception e){
		e.printStackTrace();
	} finally {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	%>