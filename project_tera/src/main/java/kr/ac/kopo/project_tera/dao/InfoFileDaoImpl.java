package kr.ac.kopo.project_tera.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.project_tera.model.InfoFile;
@Repository
public class InfoFileDaoImpl implements InfoFileDao {
	@Autowired
	SqlSession sql;
	@Override
	public void add(InfoFile file) {
		sql.insert("info_file.add", file);
	}

	@Override
	public boolean delete(int code) {
		if(sql.delete("info_file.delete",code)>0)
			return true;
		else
			return false;
	}

}
