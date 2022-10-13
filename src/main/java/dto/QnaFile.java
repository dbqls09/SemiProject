package dto;

import java.util.Date;

public class QnaFile {

	private int fileno;
	private int qnano;
	private String originname;
	private String storedname;
	private int filesize;
	private Date writeDate;
	
	public QnaFile() { }

	public QnaFile(int fileno, int qnano, String originname, String storedname, int filesize, Date writeDate) {
		super();
		this.fileno = fileno;
		this.qnano = qnano;
		this.originname = originname;
		this.storedname = storedname;
		this.filesize = filesize;
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "QnaFile [fileno=" + fileno + ", qnano=" + qnano + ", originname=" + originname + ", storedname="
				+ storedname + ", filesize=" + filesize + ", writeDate=" + writeDate + "]";
	}

	public int getFileno() {
		return fileno;
	}

	public void setFileno(int fileno) {
		this.fileno = fileno;
	}

	public int getQnano() {
		return qnano;
	}

	public void setQnano(int qnano) {
		this.qnano = qnano;
	}

	public String getOriginname() {
		return originname;
	}

	public void setOriginname(String originname) {
		this.originname = originname;
	}

	public String getStoredname() {
		return storedname;
	}

	public void setStoredname(String storedname) {
		this.storedname = storedname;
	}

	public int getFilesize() {
		return filesize;
	}

	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	
	
	
	
	
	
}
