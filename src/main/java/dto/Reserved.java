package dto;

public class Reserved {
	
	private String reservNo;
	private int viewers;
	
	public Reserved() {}

	public Reserved(String reservNo, int viewers) {
		super();
		this.reservNo = reservNo;
		this.viewers = viewers;
	}

	@Override
	public String toString() {
		return "Reserved [reservNo=" + reservNo + ", viewers=" + viewers + "]";
	}

	public String getReservNo() {
		return reservNo;
	}

	public void setReservNo(String reservNo) {
		this.reservNo = reservNo;
	}

	public int getViewers() {
		return viewers;
	}

	public void setViewers(int viewers) {
		this.viewers = viewers;
	}
	
	

}
