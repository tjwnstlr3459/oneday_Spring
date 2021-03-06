<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/dm/alarm.jsp"/>
	<h1>Spring MVC Mybatis</h1>
	<hr>
	
	<c:choose>
		<c:when test="${empty sessionScope.m }">
			<form action="/login.do">
				<fieldset>
					<legend>로그인</legend>
					아이디 : <input type="text" name="memberId"><br>
					비밀번호 : <input type="password" name="memberPw"><br>
					<input type="submit" value="로그인">
					<input type="reset" value="취소">
					<br>
					<a href="/joinFrm.do">회원가입</a>
					<a href="/searchFrm.do">아이디/비밀번호 찾기</a>
				</fieldset>
			</form>
		</c:when>
		<c:otherwise>
			<h2>[${sessionScope.m.memberName }]님 환영합니다.</h2>
			<h3><a href="/logout.do">로그아웃</a></h3>
			<h3><a href="/mypage.do?memberId=${sessionScope.m.memberId }">마이페이지</a></h3>
			<h3><a href="/allMember.do">전체회원조회</a></h3>
			<h3><a href="/allMemberAjax.do">전체회원조회(AJAX)</a></h3>
			<h3><a href="/allMemberCount.do">전체회원 수 조회</a></h3>
			<h3><a href="/deleteMember.do?memberId=${sessionScope.m.memberId }">회원탈퇴</a></h3>
			<h3><a href="/boardWriteFrm.do">게시판 글쓰기</a></h3>
			<h3><a href="/boardList.do">게시판 목록</a></h3>
			<h3><a href="/couponList.do?memberId=${sessionScope.m.memberId }">내 쿠폰 확인하기</a></h3>
			<c:if test="${sessionScope.m.memberId eq 'admin' }">
			<h3><a href="/couponExpired.do">쿠폰만료</a></h3>
			</c:if>
			<h3><a href="/allMemberChat.do">채팅하기</a></h3>
			<h3><a href="/dmList.do">쪽지함가기</a></h3>
		</c:otherwise>
	</c:choose>
	
</body>
</html>