package kr.ac.kopo.project_tera.model;

import kr.ac.kopo.project_tera.util.UploadFile;

public class NoticeFile implements UploadFile {
	private int code;
	private String filename;
	private String UUID;
	private int noticeCode;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getUUID() {
		return UUID;
	}
	public void setUUID(String uUID) {
		UUID = uUID;
	}
	public int getNoticeCode() {
		return noticeCode;
	}
	public void setNoticeCode(int noticeCode) {
		this.noticeCode = noticeCode;
	}
}
