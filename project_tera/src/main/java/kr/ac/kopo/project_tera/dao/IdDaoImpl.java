package kr.ac.kopo.project_tera.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.project_tera.model.Partner;
import kr.ac.kopo.project_tera.util.Pager;
@Repository
public class IdDaoImpl implements IdDao {
@Autowired
SqlSession sql;
	@Override
	public int total(Pager pager) {
		return sql.selectOne("id.total",pager);
	}
	@Override
	public List<Partner> list(Pager pager) {
		return sql.selectList("id.list", pager);
	}
	@Override
	public Partner item(String id) {
		return sql.selectOne("id.item",id);
	}
	@Override
	public void update(Partner item) {
		sql.update("id.update", item);
	}
}
