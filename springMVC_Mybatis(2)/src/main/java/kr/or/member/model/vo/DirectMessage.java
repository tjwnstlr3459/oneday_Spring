package kr.or.member.model.vo;

import lombok.Data;

@Data
public class DirectMessage {
	private int dmNo;
	private String sender;
	private String receiver;
	private String dmContent;
	private String dmTime;
	private String readStatus;
	
	public String getRead() {
		if(readStatus.equals("Y")) {
			return "읽음";
		}else if(readStatus.equals("N")){
			return "읽지 않음";
		}
		return null;
	}	
}
