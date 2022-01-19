package kr.ac.kopo.project_tera.model;

import java.util.List;

public class Notice {
	private int notice;
	private String noticeName;
	private String noticeDate;
	private String noticeInfo;
	private int noticeCount;
	private String id;
	private List<NoticeFile> multfile;
	private int grade;
	
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getNotice() {
		return notice;
	}
	public void setNotice(int notice) {
		this.notice = notice;
	}
	public String getNoticeName() {
		return noticeName;
	}
	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}
	public String getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeInfo() {
		return noticeInfo;
	}
	public void setNoticeInfo(String noticeInfo) {
		this.noticeInfo = noticeInfo;
	}
	public int getNoticeCount() {
		return noticeCount;
	}
	public void setNoticeCount(int noticeCount) {
		this.noticeCount = noticeCount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public List<NoticeFile> getMultfile() {
		return multfile;
	}
	public void setMultfile(List<NoticeFile> multfile) {
		this.multfile = multfile;
	}
	
	
		
}
