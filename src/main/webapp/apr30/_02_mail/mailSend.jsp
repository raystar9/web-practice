<%@page import="java.util.Date"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="javax.activation.*" %>
    <%@ page import="javax.mail.*" %>
    
    <%
    String server = "smtp.naver.com";
    String sender = request.getParameter("sender");
    String receiver = request.getParameter("receiver");
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");
    String id = "raystar9";
    String password = "dayss7492";

	try {
		Properties properties = new Properties();
		properties.put("mail.smtp.host", server);
		Session s = Session.getDefaultInstance(properties);
		
		Address senderAddress = new InternetAddress(sender);
		Address receiverAddress = new InternetAddress(receiver);
		
		Message message = new MimeMessage(s);
		
		message.setHeader("content-type", "text/html; charset=utf-8");
		message.setFrom(senderAddress);
		message.addRecipient(Message.RecipientType.TO, receiverAddress);
		message.setSubject(subject);
		message.setContent(content, "text/html; charset=utf-8");
		message.setSentDate(new Date());
		Transport transport = s.getTransport("smtp");
		transport.connect(server, id, password);
		transport.sendMessage(message, message.getAllRecipients());
		transport.close();
		
		out.println("<h3>성공적으로 전송했습니다.</h3>");
		
	} catch (Exception e) {
		e.printStackTrace();
	}
    
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>