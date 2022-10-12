package dto;

public class Mdate {
	
	private String showDate;
	
	public Mdate() {}

	public Mdate(String showDate) {
		super();
		this.showDate = showDate;
	}

	@Override
	public String toString() {
		return "Mdate [showDate=" + showDate + "]";
	}

	public String getShowDate() {
		return showDate;
	}

	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}
	
	

}
