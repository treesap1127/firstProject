package kr.ac.kopo.project_tera.model;

public class Qna {
	private int qna;
	private String qnaName;
	private String qnaDate;
	private String qnaInfo;
	private String id;
	private int grade;
	private String qnaPasswd;
	private String answer;
	private int answerCheck;
	public int getQna() {
		return qna;
	}
	public void setQna(int qna) {
		this.qna = qna;
	}
	public String getQnaName() {
		return qnaName;
	}
	public void setQnaName(String qnaName) {
		this.qnaName = qnaName;
	}
	public String getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(String qnaDate) {
		this.qnaDate = qnaDate;
	}
	public String getQnaInfo() {
		return qnaInfo;
	}
	public void setQnaInfo(String qnaInfo) {
		this.qnaInfo = qnaInfo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getQnaPasswd() {
		return qnaPasswd;
	}
	public void setQnaPasswd(String qnaPasswd) {
		this.qnaPasswd = qnaPasswd;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getAnswerCheck() {
		return answerCheck;
	}
	public void setAnswerCheck(int answerCheck) {
		this.answerCheck = answerCheck;
	}
}
