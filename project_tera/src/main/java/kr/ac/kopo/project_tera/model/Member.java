package kr.ac.kopo.project_tera.model;

public class Member {
	private int jobCode;
	private String name;
	private String tel;
	private String address;
	private String grade;
	public int getJobCode() {
		return jobCode;
	}
	public void setJob_code(int jobCode) {
		this.jobCode = jobCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}

}
