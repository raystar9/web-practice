<%@ tag language="java" body-content="empty" pageEncoding="UTF-8"%>
<%@ tag import="java.util.Calendar"%>
	<%Calendar cal = Calendar.getInstance();%>
	<%=cal.get(Calendar.YEAR)%>년 
	<%=cal.get(Calendar.MONTH)%>월 
	<%=cal.get(Calendar.DATE)%>일

