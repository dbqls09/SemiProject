package dto;

import java.util.Date;

public class Notice {

	private int notice_no;
	private String notice_title;
	private String notice_content;
	private Date notice_writedate;
	private int hit;
	
	public Notice() {}

	public Notice(int notice_no, String notice_title, String notice_content, Date notice_writedate, int hit) {
		super();
		this.notice_no = notice_no;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_writedate = notice_writedate;
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "Notice [notice_no=" + notice_no + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_writedate=" + notice_writedate + ", hit=" + hit + "]";
	}

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public Date getNotice_writedate() {
		return notice_writedate;
	}

	public void setNotice_writedate(Date notice_writedate) {
		this.notice_writedate = notice_writedate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
	
	
	
}
