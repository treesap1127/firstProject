package kr.ac.kopo.project_tera.dao;

import java.util.List;

import kr.ac.kopo.project_tera.model.Info;
import kr.ac.kopo.project_tera.model.InfoFile;
import kr.ac.kopo.project_tera.util.Pager;

public interface InfoDao {

	int total(Pager pager);

	List<Info> list(Pager pager);

	void add(Info item);

	void count(int data);

	Info item(int data);

	void update(Info item);

	void delete(int data);

	List<InfoFile> file(int code);

	void deleteM(String id);

	Info itemM(String id);

}
