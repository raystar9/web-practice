<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String fileName1 = request.getParameter("fileName1");
	String fileName2 = request.getParameter("fileName2");
	String originFileName1 = request.getParameter("originFileName1");
	String originFileName2 = request.getParameter("originFileName2");
	%>
<!DOCTYPE html>
<html>
<head>
<title>파일 업로드 확인</title>
</head>
<body>
	<table>
        <tr>
            <td colspan="2">파일 다운로드 폼</td>
        </tr>
        <tr>
            <td>올린 사람</td>
            <td><%=request.getParameter("name") %></td>
        </tr>
        <tr>
            <td>제목</td>
            <td>파일추가</td>
        </tr>
        <tr>
            <td>파일명1</td>
            <td><a href="file_down.jsp?file_name=<%=fileName1%>"><%=originFileName1%></a></td>
        </tr>
        <tr>
            <td>파일명2</td>
            <td><a href="file_down.jsp?file_name=<%=fileName2%>"><%=originFileName2%></a></td>
        </tr>
    </table>
</body>
</html>