package kr.ac.kopo.project_tera.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.ac.kopo.project_tera.model.NoticeFile;
@Repository
public class NoticeFileDaoImpl implements NoticeFileDao {
@Autowired
SqlSession sql;
	@Override
	public void add(NoticeFile file) {
		sql.insert("notice_file.add",file);

	}

	@Override
	public boolean delete(int code) {
		if(sql.delete("notice_file.delete",code)>0)
			return true;
		else
			return false;
	}

}
