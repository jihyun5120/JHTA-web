package bean;

import java.util.Date;
import java.util.List;

public class MemberVo2 {
	String mId;
	String mName;
	String rDate;
	int grade;
	
	public MemberVo2() {}
	public MemberVo2(String mId, String mName, String rDate, int grade) {
		this.mId = mId;
		this.mName = mName;
		this.rDate = rDate;
		this.grade = grade;
	}
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}