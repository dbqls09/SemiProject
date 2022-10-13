package dto;

import java.util.Date;

public class Qna {

	private int qna_no;
	private String qna_title;
	private String qna_content;
	private String qna_userid;
	private Date qna_date;
	
	
	public Qna() {}


	public Qna(int qna_no, String qna_title, String qna_content, String qna_userid, Date qna_date) {
		super();
		this.qna_no = qna_no;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_userid = qna_userid;
		this.qna_date = qna_date;
	}


	@Override
	public String toString() {
		return "Qna [qna_no=" + qna_no + ", qna_title=" + qna_title + ", qna_content=" + qna_content + ", qna_userid="
				+ qna_userid + ", qna_date=" + qna_date + "]";
	}


	public int getQna_no() {
		return qna_no;
	}


	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}


	public String getQna_title() {
		return qna_title;
	}


	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}


	public String getQna_content() {
		return qna_content;
	}


	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}


	public String getQna_userid() {
		return qna_userid;
	}


	public void setQna_userid(String qna_userid) {
		this.qna_userid = qna_userid;
	}


	public Date getQna_date() {
		return qna_date;
	}


	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	
	

	
	
	
	
}
