package kr.ac.kopo.project_tera.dao;

import kr.ac.kopo.project_tera.model.NoticeFile;

public interface NoticeFileDao {

	void add(NoticeFile file);

	boolean delete(int code);

}
