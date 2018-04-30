<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
	<%
	String uploadPath = application.getRealPath("upload");
	out.println(uploadPath + "<br>");
	
	int size = 10*1024*1024;
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
	
	String name = multi.getParameter("name");
	String subject = multi.getParameter("subject");
	
	String fileName1 = multi.getFilesystemName("fileName1");
	String fileName2 = multi.getFilesystemName("fileName2");
	String originFileName1 = multi.getOriginalFileName("fileName1");
	String originFileName2 = multi.getOriginalFileName("fileName2");
	
	out.println("filenName1 : " + fileName1 + "<br>");
	out.println("filenName2 : " + fileName2 + "<br>");
	out.println("originFilenName1 : " + originFileName1 + "<br>");
	out.println("originFilenName2 : " + originFileName2 + "<br>");
	
	%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="fileCheck.jsp" method="post" name="filecheck">
		<input type="hidden" name="name" value="<%=name%>">
		<input type="hidden" name="subject" value="<%=subject%>">
		<input type="hidden" name="fileName1" value="<%=fileName1%>">
		<input type="hidden" name="fileName2" value="<%=fileName2%>">
		<input type="hidden" name="originFileName1" value="<%=originFileName1%>">
		<input type="hidden" name="originFileName2" value="<%=originFileName2%>">
	</form>

	<a href="#" onclick="javascript:filecheck.submit()">확인하기</a>
</body>
</html>