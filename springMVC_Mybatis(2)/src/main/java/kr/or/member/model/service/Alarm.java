package kr.or.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class Alarm extends TextWebSocketHandler{
	@Autowired
	private MemberService service;
	private HashMap<String, WebSocketSession> memberList;
	public Alarm() {
		super();
		memberList = new HashMap<String,WebSocketSession>();
	}
	//클라이언트가 최초로 웹소켓 서버에 접속했을때 수행되는 메소드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{
		
	}
	//클라이언트가 서버러 메세지를 전송했을때 수행되는 메소드(실제 웹소켓로직구현하는 메소드)
	@Override
	protected void handleTextMessage(WebSocketSession session,TextMessage message) 
			throws Exception{
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(message.getPayload());
		String type = element.getAsJsonObject().get("type").getAsString();		
		String memberId = element.getAsJsonObject().get("memberId").getAsString();		
		if(type.equals("conn")) {
			memberList.put(memberId,session);
		}else if(type.equals("alarm")) {
			int dmCount = service.dmCount(memberId);
			TextMessage tm = new TextMessage(String.valueOf(dmCount));
			WebSocketSession s = memberList.get(memberId);
			if(s != null) {				
				memberList.get(memberId).sendMessage(tm);
			}
		}
	}
	//클라이언트가 연결을 끊을때 수행되는 메소드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) 
			throws Exception{
		memberList.remove(session);
	}
}







