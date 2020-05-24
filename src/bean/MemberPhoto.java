package bean;

public class MemberPhoto {
	int serial;
	String oriFile;
	String sysFile;
	
	public MemberPhoto() {}
	public MemberPhoto(int serial, String oriFile, String sysFile) {
		this.serial = serial;
		this.oriFile = oriFile;
		this.sysFile = sysFile;
	}
	
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	public String getOriFile() {
		return oriFile;
	}
	public void setOriFile(String oriFile) {
		this.oriFile = oriFile;
	}
	public String getSysFile() {
		return sysFile;
	}
	public void setSysFile(String sysFile) {
		this.sysFile = sysFile;
	}
}

