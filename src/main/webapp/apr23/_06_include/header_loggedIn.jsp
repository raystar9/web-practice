<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
<script>
    $(document).ready(()=>{
        $("#logLink").click(()=>{
            alert("로그아웃 되었습니다.");
        })
</script>
<%= session.getAttribute("id") %> 님 환영합니다.<a href="logout" id="logLink">로그아웃</a>
<hr>
