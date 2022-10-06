package web.dto;

public class Member {
	
	private String name;
	private String id;
	private String pw;
	private String email;
	private String phone;
	private String grade;
	
	public Member() {}
	
	public Member(String name, String id, String pw, String email, String phone, String grade) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.phone = phone;
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "Member [name=" + name + ", id=" + id + ", pw=" + pw + ", email=" + email
				+ ", grade=" + grade+ "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public void setUserno(int next) {

	}
}
	

