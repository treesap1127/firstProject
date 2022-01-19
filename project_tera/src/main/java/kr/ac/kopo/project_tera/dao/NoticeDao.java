package kr.ac.kopo.project_tera.dao;

import java.util.List;

import kr.ac.kopo.project_tera.model.Notice;
import kr.ac.kopo.project_tera.model.NoticeFile;
import kr.ac.kopo.project_tera.util.Pager;

public interface NoticeDao {

	List<Notice> list(Pager pager);

	void add(Notice item);

	int total(Pager pager);

	Notice item(int notice);

	void delete(int notice);

	void update(Notice item);

	void count(int notice);

	List<NoticeFile> file(int code);

	Notice itemM(String id);

	void deleteM(String id);

}
