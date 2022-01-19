package kr.ac.kopo.project_tera.dao;

import kr.ac.kopo.project_tera.model.InfoFile;

public interface InfoFileDao {

	void add(InfoFile file);

	boolean delete(int code);

}
