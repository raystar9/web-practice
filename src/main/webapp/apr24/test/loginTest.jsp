<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% if(!config.getInitParameter("id").equals(request.getParameter("id"))){
    %>
    <script>
		alert("아이디가 잘못되었습니다.");
		document.write("<%=config.getInitParameter("id")%>");
		document.write("<%=request.getParameter("id")%>");
        history.back();
	</script>
	<%
    } else if(!config.getInitParameter("pass").equals(request.getParameter("pass"))){
    %>
	<script>
		alert("비밀번호가 잘못되었습니다.");
        history.back();
	</script>
	<%
	} else {
	%>
    <script>
		alert("로그인에 성공했습니다.");
	</script>
    <%
    }
    %>