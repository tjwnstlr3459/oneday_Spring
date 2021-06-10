<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쪽지함</h1>
	<table border="1">
		<tr>
			<th>번호</th><th>내용</th><th>받는이</th><th>보낸이</th><th>시간</th><th>상태</th>
		</tr>
		<c:forEach items="${dm}" var="d" varStatus="i">
		<tr>
			<th>${i.count }</th>
			<th><a href="/dmCheck.do?dmNo=${d.dmNo }">${d.dmContent }</a></th>
			<th>${d.sender }</th>
			<th>${d.receiver }</th>
			<th>${d.dmTime }</th>
			<th>${d.status }</th>
		</tr>
		</c:forEach>
	</table>
	<br>
	
	<br>
	
	<table border="1">
		<tr>
			<th>받는이</th>
			<th>
			<select type="text" name="receiver">
				<option>user01</option>
				<option>user02</option>
				<option>user03</option>
				<option>admin</option>
			</select>
			</th>
		</tr>
		<tr>
			<th>보내는이</th><th><input type="text" name="sender" value='${sessionScope.m.memberId }'></th>
		</tr>
		<tr height="100px">
			<th rowspan="3">내용</th><th rowspan="3"><input style="height: 100px" type="text" name="dmContent"></th>
		</tr>
	</table>
		<button type="button" id="budybudy">쪽찌 보내기</button>
</body>
<script>
	$("#budybudy").click(function(){
		var sender = $('[name=sender]').val();
		var receiver = $('[name=receiver]').val();
		var dmContent = $('[name=dmContent]').val();
		$.ajax({
			url : "/sendDm.do",			
			data : {sender : sender, dmContent : dmContent,receiver:receiver},
			success : function(data){
				if(data == 1){					
					alert("쪽지를 보냈습니다!");
				}
			}
		});
	});
</script>
</html>

















