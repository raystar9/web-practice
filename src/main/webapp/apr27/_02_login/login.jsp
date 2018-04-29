<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
    <%
    String remember = "";
    if((request.getCookies() != null)){
	    for(Cookie cookie : request.getCookies()){
	    	if(cookie.getName().equals("remember")){
	    		remember = cookie.getValue();
	    	}
	    }
    }
    System.out.println(remember);
    if(remember.equals("true")){
    	%>
    	<script src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
    	<script>
    		$(document).ready(()=>{
    			$('#remember').prop("checked", true);
    			$('#id').val('<%=config.getInitParameter("ID")%>');
    		});
    	</script>
    	<%
    }
    %>
</head>
<body>
    <form action="loginprocess.jsp" method="post">
        아이디<input type="text" name="id" id="id"><input type="checkbox" name="remember" id="remember"> 아이디 기억하기<br>
        비밀번호<input type="password" name="password" id="password">
        <input type="submit" value="로그인"><br>
    </form>
    <%= session%>
</body>
</html>