<%@page import="java.util.HashMap"%>
<%@page import="java.util.Enumeration" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!  %>
<%
	request.setCharacterEncoding("utf-8");
	HashMap<String, String> map = new HashMap<>();
	map.put("id", "아이디");
	map.put("pass", "비밀번호");
	map.put("jumin1", "주민번호1");
	map.put("jumin2", "주민번호2");
	map.put("email", "이메일");
	map.put("domain", "도메인");
	map.put("gender", "성별");
	map.put("hobby", "취미");
	map.put("post1", "우편번호1");
	map.put("post2", "우편번호2");
	map.put("address", "주소");
	map.put("introduce", "자기소개");
	
	Enumeration<String> paramNames = request.getParameterNames();
	while(paramNames.hasMoreElements()){
		String paramName = paramNames.nextElement();
		if(paramName.equals("hobby")){
			String[] hobbys = request.getParameterValues(paramName);
			for(String hobby : hobbys){
				out.print(map.get(paramName) + " = " + hobby + "<br>");
			}
		} else {
			out.print(map.get(paramName) + " = "+ request.getParameter(paramName) + "<br>");
		}
	}
	
%>