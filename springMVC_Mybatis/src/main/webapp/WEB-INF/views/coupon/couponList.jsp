<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
    <!-- JSTL Core 태그 -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠폰리스트</h1>
	<hr>
	<table border="1">
		<tr>
			<th>번호</th><th>쿠폰이름</th><th>쿠폰내용</th><th>발급일</th><th>만료일</th><th>상태</th>
		</tr>
		<c:forEach items="${list }" var="c" varStatus="i">
			<tr>
				<th>${i.count }</th>
				<th>${c.couponName }</th>
				<th>${c.couponContent }</th>
				<th>${c.startDate }</th>
				<th>${c.endDate }</th>
				<th>${c.status }</th>   
			</tr>
		</c:forEach>
	</table>
</body>
</html>