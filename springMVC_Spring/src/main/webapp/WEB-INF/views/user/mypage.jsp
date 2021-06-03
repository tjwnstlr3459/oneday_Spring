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
	<h1>마이페이지</h1>
	<hr>
	<form action="/updatemember.do">
		<fieldset>
			이메일 : <input type="text" name="email" value="${user.email }" readonly><br>
			<!-- <button type="button" onclick="location.href='/pwUpdate.do'">비밀번호 변경</button><br> -->
			비밀번호 : <input type="password" name="userPw" value="${user.userPw}"><br>
			이름 : <input type="text" name="userName" value="${user.userName }"><br>
			나이 : <input type="text" name="age" value="${user.age }"><br>
			<br>
			<input type="submit" value="정보수정">
		</fieldset>
	</form>
</body>
</html>















