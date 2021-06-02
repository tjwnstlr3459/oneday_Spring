<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 아작스를 위한 라이브러리 추가 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<h1>비밀번호 확인</h1>
	<hr>
	<form action="/pwCheck.do" method="post">
		<!-- 비밀번호 확인을 위해 아이디도 필요하기에 값을 넘겨주기위한 숨겨진 아이디창 -->
		<input type="hidden" name="memberId" value="${sessionScope.m.memberId }">
		기존 비밀번호 입력: <input type="text" name="memberPw" >
		<button>확인</button>
	</form>
	<script>
		function checkPw(){
			var memberPw = $("[name=pwd]").val();
			var memberId = $("[name=memberId]").val();
			$.ajax({
				url : "/checkPw.do",
				data: {memberId;memberId, memberPw : memberPw},
				type : "post",
				success : function(data){
					if(data == 1){
						$("form").show();
					}else{
						alert("비밀번호를 확인해주세요")
					}
				}
				
			})
		}
	</script>
</body>
</html>