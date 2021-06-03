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
			이메일 : <input type="text" name="email" class="memberId"><span id="idChk"></span><br>
			비밀번호 : <input type="password" name="userPw"><br>
			이름 : <input type="text" name="userName"><br>
			나이 : <input type="text" name="age"><br>
			<button>회원가입</button>
		</fieldset>
	</form>
	
	<!-- <script>
	$("[name=memberId]").keyup(function(){
		
		var memberId = $(this).val();
		
		$.ajax({
			url : "/idChk.do",
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
	});
	</script> -->
</body>
</html>










