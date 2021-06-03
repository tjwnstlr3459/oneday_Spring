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
	<h1>Spring MVC Spring</h1>
	<hr>
	<c:choose>
		<c:when test="${empty sessionScope.u }">
			<form action="/login.do">
				<fieldset>
					<legend>로그인</legend>
					이메일 : <input type="text" name="email"><br>
					비밀번호 : <input type="password" name="userPw"><br>
					<input type="submit" value="로그인">
					<input type="reset" value="취소">
					<br>
					<a href="/joinFrm.do">회원가입</a>
					<a href="/searchFrm.do">아이디/비밀번호 찾기</a>
				</fieldset>
			</form>
		</c:when>
		<c:otherwise>
		<h2>[${sessionScope.u.userName }]님 환영합니다.</h2>
		<h3><a href="/logout.do">로그아웃</a></h3>
		<h3><a href="/mypage.do?userEmail=${sessionScope.u.email }">마이페이지</a></h3>
		<h3><a href="/deleteUser.do?userEmail=${sessionScope.u.email }">회원탈퇴</a></h3>
		</c:otherwise>
	</c:choose>
</body>
</html>