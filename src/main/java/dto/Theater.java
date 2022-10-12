package dto;

public class Theater {
	
	private int theaterNo;
	private String theaterName;
	
	public Theater() {}

	public Theater(int theaterNo, String theaterName) {
		super();
		this.theaterNo = theaterNo;
		this.theaterName = theaterName;
	}

	@Override
	public String toString() {
		return "Theater [theaterNo=" + theaterNo + ", theaterName=" + theaterName + "]";
	}

	public int getTheaterNo() {
		return theaterNo;
	}

	public void setTheaterNo(int theaterNo) {
		this.theaterNo = theaterNo;
	}

	public String getTheaterName() {
		return theaterName;
	}

	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	
	

}
