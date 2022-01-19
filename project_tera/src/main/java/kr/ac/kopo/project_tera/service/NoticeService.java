package kr.ac.kopo.project_tera.service;

import java.util.List;

import kr.ac.kopo.project_tera.model.Notice;
import kr.ac.kopo.project_tera.model.NoticeFile;
import kr.ac.kopo.project_tera.util.Pager;

public interface NoticeService {

	List<Notice> list(Pager pager);

	void add(Notice item);

	Notice item(int notice);

	void delete(int notice);

	void update(Notice item);

	boolean deleteFile(int code);

	void count(int notice);

	NoticeFile file(int code);

}
