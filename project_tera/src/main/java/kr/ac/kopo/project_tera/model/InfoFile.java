package kr.ac.kopo.project_tera.model;

import kr.ac.kopo.project_tera.util.UploadFile;

public class InfoFile implements UploadFile {
	private int code;
	private String filename;
	private String UUID;
	private int info;
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
	public int getInfo() {
		return info;
	}
	public void setInfo(int info) {
		this.info = info;
	}
}
