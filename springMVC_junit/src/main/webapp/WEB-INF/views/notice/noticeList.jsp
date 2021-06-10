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
	<h1>전체 게시판</h1>
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
			<th><a href="/noticeListCheck.do?noticeNo=${l.noNo }">${l.noTitle }</a></th>
			<th>${l.noWriter }</th>
			<th>${l.noDate }</th>
		</tr>
		</c:forEach>
	</table>
	<button type="button"><a href="/noticeWrite.do">게시물 작성</a></button>
	
</body>
</html>












