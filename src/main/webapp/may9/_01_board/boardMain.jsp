<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="post" items="${posts}">
			<tr>
				<td>${post.postNum }</td>
				<td>${post.postSubject }</td>
				<td>${post.postName }</td>
				<td>${post.postReadCount }</td>
			</tr>
	</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="4"><a href="/web-practice/board/writer">글쓰기</a></td>
		</tr>
	</tfoot>
</table>

</body>
</html>