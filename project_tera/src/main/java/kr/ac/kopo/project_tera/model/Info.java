package kr.ac.kopo.project_tera.model;

import java.util.List;

public class Info {
	private int data;
	private String dataName;
	private	String dataDate;
	private String dataInfo;
	private String id;
	private int dataCount;
	private List<InfoFile> multfile;
	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}
	public String getDataName() {
		return dataName;
	}
	public void setDataName(String dataName) {
		this.dataName = dataName;
	}
	public String getDataDate() {
		return dataDate;
	}
	public void setDataDate(String dataDate) {
		this.dataDate = dataDate;
	}
	public String getDataInfo() {
		return dataInfo;
	}
	public void setDataInfo(String dataInfo) {
		this.dataInfo = dataInfo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDataCount() {
		return dataCount;
	}
	public void setDataCount(int dataCount) {
		this.dataCount = dataCount;
	}
	public List<InfoFile> getMultfile() {
		return multfile;
	}
	public void setMultfile(List<InfoFile> multfile) {
		this.multfile = multfile;
	}

}
