<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   	
	<%
	String sql = "SELECT NAME, AGE, GENDER, EMAIL FROM MEMBER WHERE ID=?";
	Connection conn = null;
	PreparedStatement pstmt = null;
	String name = "";
	int age = 0;
	String gender = "";
	String email = "";
	try{
		Context init = new InitialContext();
		DataSource source = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = source.getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, (String)session.getAttribute("id"));
		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()){
			name = rs.getString("name");
			age = rs.getInt("age");
			gender = rs.getString("gender");
			email = rs.getString("email");
		}
	} catch(Exception e) {
		
	}
	
	
	
	
	
	
	%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="../../bootstrap-3.3.2-dist/css/bootstrap.min.css">
</head>
<body>
  <fieldset>
    <legend>회원정보변경</legend>
    <form method="post" action="updateProcess.jsp" id="myForm">
        <table>
          <tr>
            <td><div>기존 비밀번호</div></td><td><input type="password" name="pass" id="pass"></td>
          </tr>
          <tr>
            <td><div>변경할 비밀번호</div></td><td><input type="password" name="pass-to" id="pass-to"></td>
          </tr>
          <tr>
            <td><div>이름</div></td>
            <td>
                <input type="text" name="name" id="name" value="<%=name %>">
              </td>
          </tr>
          <tr><td><div>나이</div></td>
            <td>
                <input type="text" name="age" id="age" value="<%=age %>">
            </td>
          </tr>
          <tr><td><div>성별</div></td>
            <td>
              <input type="radio" name="gender" id="gender1" value="m" <%if(gender.equals("m")){%>checked<%}%>>남성
              <input type="radio" name="gender" id="gender2" value="f" <%if(gender.equals("f")){%>checked<%}%>>여성
            </td>
          </tr>
          <tr><td><div>이메일</div></td>
            <td>
                <input type="text" name="email" id="email" value="<%=email %>">
            </td>
          </tr>
          <tr><td colspan="2"><input type="submit"></td></tr>
        </table>
      </form>
  </fieldset>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script type="text/javascript" src="../../bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
</body>
</html>