<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
	nav {text-align: right;}
	aside {display: inline-block; width: 30%; height: inherit; vertical-align: top; background-color: lightgrey; border: 1px grey solid; margin: 0px;}
	article {display: inline-block; width: 60%;  height: inherit; vertical-align: top; border: 1px grey solid; margin: 0px;}
	#hbody {height: 300px;}
	.asideitem {height: 50px; margin: 0px;}
	.asideitem:hover {background-color: grey;}
</style>
</head>
<body>
	<header><jsp:include page="header.html"></jsp:include></header>
	<nav><jsp:include page="navigation.html"></jsp:include></nav>
	<div id="hbody">
		<aside><jsp:include page="aside.html"></jsp:include></aside>
		<% 
		String pageName = request.getParameter("page");
		if(pageName == null) {
			pageName = "newitem";
		}
		%>
		<article><jsp:include page='<%=pageName + ".jsp" %>'></jsp:include></article>
	</div>
	<footer><jsp:include page="footer.html"></jsp:include></footer>
	
</body>
</html>