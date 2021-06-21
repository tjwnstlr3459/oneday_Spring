<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	$(function(){
		$.ajax({
			url : "/receiverList.do",
			success : function(data){
				for(var i=0;i<data.length;i++){
					var html = "<option value='"+data[i]+"'>"+data[i]+"</option>";
					$("#receiver").append(html);
				}
			}
		});
	});
	function sendDm(sender){
		var receiver = $("#receiver").val();
		var dmContent = $("#dmContent").val();
		$.ajax({
			url : "/sendDm.do",
			type : "post",
			data : {dmContent:dmContent,sender:sender,receiver:receiver},
			success : function(data){
				if(data == '1'){
					alert("쪽지보내기 성공");
					dmCount(receiver);
					location.reload();
				}else{
					alert("쪽지보내기 실패");
				}
			}
		});
	}
	
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/dm/alarm.jsp"/>
	<h1>쪽지함</h1>
	<hr>
	<h2>쪽지보내기</h2>
	<input type="text" id="dmContent">
	<select id="receiver"></select>
	<button onclick="sendDm('${sessionScope.m.memberId}')">쪽지보내기</button>
	<hr>
	<h2>받은쪽지함</h2>
	<table border="1">
		<tr>
			<th>번호</th><th>보낸사람</th><th>내용</th><th>날짜</th><th>읽음여부</th>
		</tr>
		<c:forEach items="${list }" var="dm" varStatus="i">
			<c:if test="${dm.receiver eq sessionScope.m.memberId }">
				<tr>
					<td>${dm.dmNo }</td>
					<td>${dm.sender }</td>
					<td>${dm.dmContent }</td>
					<td>${dm.dmTime }</td>					
					<td>${dm.read }</td>
				</tr>
			</c:if>
		</c:forEach>		
	</table>
	
	<hr>
	<h3>보낸쪽지함</h3>
	<table border="1">
		<tr>
			<th>번호</th><th>보낸사람</th><th>내용</th><th>날짜</th><th>읽음여부</th>
		</tr>
		<c:forEach items="${list }" var="dm" varStatus="i">
			<c:if test="${dm.sender eq sessionScope.m.memberId }">
				<tr>
					<td>${dm.dmNo }</td>
					<td>${dm.receiver }</td>
					<td>${dm.dmContent }</td>
					<td>${dm.dmTime }</td>					
					<td>${dm.read }</td>
				</tr>
			</c:if>
		</c:forEach>		
	</table>
</body>
</html>
