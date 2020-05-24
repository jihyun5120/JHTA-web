package bean;

import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;

public class MemberVo {
	List<MemberPhoto> photos;
	String mId;
	String pwd;
	String mName;
	Date rDate;
	int grade;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String pattern = "{'mId':'%s', 'mName':'%s', 'rDate':'%s', 'grade':'%s'}"; 
	
	public MemberVo() {}
	public MemberVo(String mId, String pwd, String mName, Date rDate, int grade) {
		this.mId = mId;
		this.pwd = pwd;
		this.mName = mName;
		this.rDate = rDate;
		this.grade = grade;
	}
	
	 public String toString(){
		 String date = sdf.format(rDate);  
		 String str = String.format("%10s\t%15s\t%15s\t%15s\t%4d\n", mId, pwd, mName, date, grade );    
		 return str;  
	}
	 
	 public String toJSON(){
		 String date = sdf.format(rDate);
		 String json =   String.format(pattern, mId, pwd, mName, date, grade );
		 json = json.replaceAll("\'", "\"");  
		 return json;  
	 }
	 
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public List<MemberPhoto> getPhotos() {
		return photos;
	}
	public void setPhotos(List<MemberPhoto> photos) {
		this.photos = photos;
	}
	
}
