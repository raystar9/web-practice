<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
	<%
	String fileName = request.getParameter("file_name");
	System.out.println("fileName = " + fileName);
	
	String savePath = "upload";
	
	ServletContext context = pageContext.getServletContext();
	String downloadPath = context.getRealPath(savePath);
	
	String filePath = downloadPath + "/" + fileName;
	System.out.println(filePath);
	
	byte[] b = new byte[4096];
	
	String mimeType = context.getMimeType(filePath);
	System.out.println("mimeType : " + mimeType);
	
	if(mimeType == null){
		mimeType = "application/octet-stream";
	}
	
	response.setContentType(mimeType);
	response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
	
	ServletOutputStream servOut = response.getOutputStream();
	BufferedOutputStream buffOut = null;
	BufferedInputStream buffIn = null;
	try {
		buffOut = new BufferedOutputStream(servOut);
		buffIn = new BufferedInputStream(new FileInputStream(filePath));
		int numRead = 0;
		while((numRead = buffIn.read(b, 0, b.length)) != -1){
			buffOut.write(b, 0, numRead);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if(buffOut != null) {
				buffOut.flush();
				buffOut.close();
			}
			if(buffIn != null) {
				buffIn.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	%>
	
	
	
	
	
	
	
	
	