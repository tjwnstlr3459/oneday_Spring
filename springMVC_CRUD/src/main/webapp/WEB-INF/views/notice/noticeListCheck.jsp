<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- JSTL Core 태그 -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시물 확인</h1>
	<hr>
	<table border="1">
		<c:forEach items="${list }" var="list">
			<tr>
				<th>제목</th><th colspan="3">${list.noTitle }</th>
			</tr>
			<tr>
				<th>작성자</th><th>${list.noWriter }</th>
				<th>날짜</th><th>${list.noDate }</th>
			</tr>
			<tr>
				<th>내용</th><th colspan="3">${list.noContent }</th>
			</tr>
		</c:forEach>
	</table>
	<input type="button" value="게시물  수정">
	<input type="button" value="게시물 삭제">
	
</body>
</html>