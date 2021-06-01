<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호 확인</h1>
	<hr>
	<form action="/pwCheck.do" method="post">
		<input type="hidden" name="memberId" value="${sessionScope.m.memberId }">
		기존 비밀번호 입력: <input type="text" name="memberPw">
		<button>확인</button>
	</form>
</body>
</html>