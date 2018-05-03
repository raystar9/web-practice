<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<%@ page isELIgnored="true" %> --%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%pageContext.setAttribute("food", "과자"); %>

${food }
${empty food}
${empty food2}
${null== food2}
</body>
</html>