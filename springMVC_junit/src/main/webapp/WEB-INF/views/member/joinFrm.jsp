<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<hr>
	<form action="/join.do" method="post">
		<fieldset>
			아이디 : <input type="text" name="memberId" class="memberId"><span id="idChk"></span><br>
			비밀번호 : <input type="password" name="memberPw"><br>
			이름 : <input type="text" name="memberName"><br>
			전화번호 : <input type="text" name="phone"><br>
			주소 : <input type="text" name="address"><br>
			성별 : 
			<input type="radio" name="gender" value="남">남자
			<input type="radio" name="gender" value="여">여자
			<br>
			<input type="submit" value="회원가입">
			<input type="reset" value="취소">
		</fieldset>
	</form>
	<button id="btn">테스트 이동</button>
	
	
	<!-- <script>
	$("#btn").click(function(){
		location.href="http://192.168.10.47";
	});
	
	
	$("[name=memberId]").keyup(function(){
		
		var memberId = $(this).val();
		
		$.ajax({
			url : "http://192.168.10.47/idChk.do",
			data : {memberId:memberId},
			type : "post",
			success : function(data){
				if(data == 1){
					$("#idChk").html("아이디 중복입니다.");
				}else{
					$("#idChk").html("아이디 사용가능합니다");
				}
			}
		});
	}); -->
	</script>
</body>
</html>










