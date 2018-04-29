<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! 
   	private String haveToRemember(HttpServletRequest request){
    	if(request.getParameter("remember") == null) {
    		return "false";
    	} else {
    		return "true";
    	}
    }
    %>
<%
	session.setAttribute("id", request.getParameter("id"));
	session.setMaxInactiveInterval(120);
	String remember = haveToRemember(request);

	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		Cookie newCookie = new Cookie("remember", remember);
		newCookie.setMaxAge(60 * 60 * 24);
		response.addCookie(newCookie);
		System.out.println("쿠키 새로 생성");
	} else {
		boolean hasRememberIDCookie = false;
		for(Cookie cookie :cookies){
			if(cookie.getName().equals("remember")){
				hasRememberIDCookie = true;
				if(request.getParameter("remember") == null){
					cookie.setValue("false");
					System.out.println("쿠키 false로 변경");
				} else {
					cookie.setValue("true");
					System.out.println("쿠키 true로 변경");
				}
			}
		}
		if(!hasRememberIDCookie) {
			Cookie newCookie = new Cookie("remember", remember);
			newCookie.setMaxAge(60 * 60 * 24);
			response.addCookie(newCookie);
			System.out.println("쿠키 새로 생성2");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
    로그인에 성공했습니다.<br><br>
    <a href="loginCheck.jsp">로그인 체크</a>
</body>
</html>