<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.css">
<meta charset="UTF-8">
<title>게시물 목록</title>
</head>

<body>
<div class="container">
	<form id="boardFrom" name="boardForm" method="post">
	<table class="table table-striped table-hover">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${list}" var="list"> 
			<tr>
				<td>${list.bno}</td>
				<td>
					<a href="/board/view?bno=${list.bno}">${list.title}</a>
				</td>
				<td>${list.regDate}</td>
				<td>${list.writer}</td>
				<td>${list.viewCnt}</td>
			</tr>
	</c:forEach>
	</tbody>
	</table>
	</form>
</div>

</body>
</html>