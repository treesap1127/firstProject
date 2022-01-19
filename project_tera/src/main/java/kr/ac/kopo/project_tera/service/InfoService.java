package kr.ac.kopo.project_tera.service;

import java.util.List;

import kr.ac.kopo.project_tera.model.Info;
import kr.ac.kopo.project_tera.model.InfoFile;
import kr.ac.kopo.project_tera.util.Pager;

public interface InfoService {

	List<Info> list(Pager pager);

	void add(Info item);

	void count(int data);

	Info item(int data);

	void update(Info item);

	void delete(int data);

	boolean deleteFile(int code);

	InfoFile file(int code);

}
