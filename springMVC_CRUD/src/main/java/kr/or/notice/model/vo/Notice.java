package kr.or.notice.model.vo;

public class Notice {
	
	private String noTitle;
	private String noContent;
	private String noWriter;
	private String noDate;
	private	int noNo;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(String noTitle, String noContent, String noWriter, String noDate, int noNo) {
		super();
		this.noTitle = noTitle;
		this.noContent = noContent;
		this.noWriter = noWriter;
		this.noDate = noDate;
		this.noNo = noNo;
	}
	public String getNoTitle() {
		return noTitle;
	}
	public void setNoTitle(String noTitle) {
		this.noTitle = noTitle;
	}
	public String getNoContent() {
		return noContent;
	}
	public void setNoContent(String noContent) {
		this.noContent = noContent;
	}
	public String getNoWriter() {
		return noWriter;
	}
	public void setNoWriter(String noWriter) {
		this.noWriter = noWriter;
	}
	public String getNoDate() {
		return noDate;
	}
	public void setNoDate(String noDate) {
		this.noDate = noDate;
	}
	public int getNoNo() {
		return noNo;
	}
	public void setNoNo(int noNo) {
		this.noNo = noNo;
	}
	
}
	