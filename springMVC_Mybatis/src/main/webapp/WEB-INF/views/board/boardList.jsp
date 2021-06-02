<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전체 보드 출력</h1>
	<hr>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${list }" var="l" varStatus="i">
		<tr>
			<th>${i.count }</th>
			<th><a href="/boardListCheck.do?boardNo=${l.boardNo}">${l.boardTitle }</a></th>
			<th>${l.boardWriter }</th>
			<th>${l.boardDate }</th>
		</tr>
		</c:forEach>
	</table>
</body>
</html>