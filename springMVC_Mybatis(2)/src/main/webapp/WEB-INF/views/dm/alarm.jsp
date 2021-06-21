<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${not empty sessionScope.m }">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	var ws;
	var sender = '${sessionScope.m.memberId}';
	$(function(){
		ws = new WebSocket("ws://192.168.10.98/alarm.do");
		ws.onopen = dmStart;
		ws.onmessage = dmMsg;
		ws.onclose = dmEnd;
	});	
	function dmStart(){		
		var data = {type:"conn",memberId:sender};
		ws.send(JSON.stringify(data));
		dmCount(sender);		
	}
	function dmMsg(param){		
		$("#dmCount").html(param.data);
	}
	function dmEnd(){
		
	}
	function dmCount(receiver){
		var data = {type:"alarm",memberId : receiver};
		ws.send(JSON.stringify(data));
	}
</script>
<h1>읽지않은 쪽지 : <span id="dmCount"></span></h1>
</c:if>