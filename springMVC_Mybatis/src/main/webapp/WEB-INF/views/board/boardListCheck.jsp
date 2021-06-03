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
	<h1>게시물 상세보기</h1>
	<hr>
	<table border="1">
		<tr>
			<th>제목</th><th colspan="3">${board.boardTitle }</th>
		</tr>
		<tr>
			<th>작성자</th><th>${board.boardWriter }</th><th>작성일</th><th>${board.boardDate }</th>
		</tr>
		
		<tr>
		<th>첨부파일</th>
		<td colspan="3">
		<c:forEach items="${board.fileList }" var="l">
			${l.filePath }
		</c:forEach>
		</td>
		
		</tr>
		
		<tr>
			<th>내용</th><th colspan="3">${board.boardContent }</th>
		</tr>
		
	</table>
	
</body>
</html>