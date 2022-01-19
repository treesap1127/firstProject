package kr.ac.kopo.project_tera.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.project_tera.model.Member;
import kr.ac.kopo.project_tera.util.Pager;
@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	SqlSession sql;

	@Override
	public List<Member> list(Pager pager) {
		return sql.selectList("member.list",pager);
	}
	@Override
	public Member item(int code) {
		return sql.selectOne("member.item",code);
	}
	@Override
	public int total(Pager pager) {
		return sql.selectOne("member.total",pager);
	}
	@Override
	public void add(Member item) {
		sql.insert("member.add",item);
	}
	@Override
	public void update(Member item) {
		sql.update("member.update", item);
	}
	@Override
	public void delete(int code) {
		sql.delete("member.delete",code);
	}
	@Override
	public String haveid(int code) {
		return sql.selectOne("member.haveid", code);
	}

}
