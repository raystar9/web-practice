<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<c:set var="pageListStart" value="${page-(page-1)%10}"></c:set>
<c:choose>
	<c:when test="${lastPage < page-(page-1)%10 +9}">
		<c:set var="pageListEnd" value="${lastPage}"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="pageListEnd" value="${page-(page-1)%10 +9}"></c:set>
	</c:otherwise>
</c:choose>
</head>
<body>
${articleCount }
${lastPage }
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
				<td><a href="/web-practice/board/article/${post.postNum}">${post.postSubject }</a></td>
				<td>${post.postName }</td>
				<td>${post.postReadCount }</td>
			</tr>
	</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="4">
			<div>
			<c:choose>
				<c:when test="${page == 1}">이전</c:when>
				<c:when test="${page <= 11}"><a href="/web-practice/board?page=1">이전</a></c:when>
				<c:otherwise><a href="/web-practice/board?page=${page - 10}">이전</a></c:otherwise>
			</c:choose>
			</div>
			<div>
				<c:forEach begin="${pageListStart}" end="${pageListEnd}" var="i">
					<a href="/web-practice/board?page=${i }">${i }</a>
				</c:forEach>
			</div>
			</td>
		</tr>
	</tfoot>
</table>
<a href="/board/writer">글쓰기</a></td>

</body>
</html>