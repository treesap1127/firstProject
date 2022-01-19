package kr.ac.kopo.project_tera.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.project_tera.model.Fnq;
import kr.ac.kopo.project_tera.util.Pager;
@Repository
public class FnqDaoImpl implements FnqDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("fnq.total",pager);
	}

	@Override
	public List<Fnq> list(Pager pager) {
		return sql.selectList("fnq.list",pager);
	}

	@Override
	public void add(Fnq item) {
		sql.insert("fnq.add", item);

	}

	@Override
	public void update(Fnq item) {
		sql.update("fnq.update",item);

	}

	@Override
	public Fnq item(int fnq) {
		return sql.selectOne("fnq.item",fnq);
	}

	@Override
	public void delete(int fnq) {
		sql.delete("fnq.delete", fnq);

	}

	@Override
	public void deleteM(String id) {
		sql.delete("fnq.deleteM", id);
		
	}

}
