package kr.ac.kopo.project_tera.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.project_tera.model.Notice;
import kr.ac.kopo.project_tera.model.NoticeFile;
import kr.ac.kopo.project_tera.util.Pager;
@Repository
public class NoticeDaoImpl implements NoticeDao {
@Autowired
SqlSession sql;
	@Override
	public List<Notice> list(Pager pager) {
		return sql.selectList("notice.list",pager);
	}

	@Override
	public void add(Notice item) {
		sql.insert("notice.add", item);
	}
	
	@Override
	public int total(Pager pager) {
		
		return sql.selectOne("notice.total",pager);
	}

	@Override
	public Notice item(int notice) {
		return sql.selectOne("notice.item",notice);
	}

	@Override
	public void delete(int notice) {
		sql.delete("notice.delete", notice);
	}

	@Override
	public void update(Notice item) {
		sql.update("notice.update", item);
	}

	@Override
	public void count(int notice) {
		sql.update("notice.count",notice) ;
	}

	@Override
	public List<NoticeFile> file(int code) {
		return sql.selectList("notice_file.item",code);
	}

	@Override
	public Notice itemM(String id) {
		return sql.selectOne("notice.itemM",id);
	}

	@Override
	public void deleteM(String id) {
		sql.delete("notice.deleteM", id);
		
	}
}
