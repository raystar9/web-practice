<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String language = "korean";

	//header의 이름 중에서 cookie의 값을 가져옵니다.
	String cookie = request.getHeader("Cookie");
	System.out.println(cookie);

	//쿠키가 존재하지 않습니다.
	if (cookie != null) {
		//존재하는 쿠키들을 배열로 가져옵니다.
		Cookie cookies[] = request.getCookies();

		//쿠키의 이름이 "language1"인 값을 찾기 위해 쿠키 배열들을 모두
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("language1")) {
				language = cookies[i].getValue();
			}
		}
		out.println(language);
	}
%>
<!DOCTYPE html>

<html>
<style>
	fieldset{margin:0 auto; width:500px;}
	*{text-align: center}
	body{margin-top: 150px}
</style>
<head>
<title>Insert title here</title>
<script src="/web-practice/webjars/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(()=>{
		if('<%=language%>' == ('korean')){
			console.log('한국어입니다.');
			$('#korean').attr('checked', true);
		} else if('<%=language%>' == ('english')){
			console.log('영어입니다.');
			$('#english').attr('checked', true);
		}
	});
</script>
</head>
<body>
	<%
		if (language.equals("korean")) {
	%>
	<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
	<%
		} else {
	%>
	<h3>Hello. This is Cookie example.</h3>
	<%
		}
	%>

	<form action="cookieExample2.jsp" method="post">
		<fieldset>
			<input type="radio" value="korean" name="language" id="korean">한국어
			페이지 보기 <input type="radio" value="english" name="language" id="english">영어
			페이지 보기<br><br>
			<input type="submit" value="설정">
		</fieldset>
	</form>
</body>
</html>