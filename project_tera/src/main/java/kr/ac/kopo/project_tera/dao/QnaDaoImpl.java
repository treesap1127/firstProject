package kr.ac.kopo.project_tera.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.project_tera.model.Qna;
import kr.ac.kopo.project_tera.util.Pager;
@Repository
public class QnaDaoImpl implements QnaDao {
	@Autowired
	SqlSession sql;
	@Override
	public int total(Pager pager) {
		return sql.selectOne("qna.total",pager);
	}

	@Override
	public List<Qna> list(Pager pager) {
		return sql.selectList("qna.list",pager);
	}

	@Override
	public Qna item(int qna) {
		return sql.selectOne("qna.item",qna);
		
	}

	@Override
	public void update(Qna item) {
		sql.update("qna.update",item);
	}

	@Override
	public void delete(int qna) {
		sql.delete("qna.delete", qna);
	}

	@Override
	public void add(Qna item) {
		sql.insert("qna.add", item);
	}

	@Override
	public int lockPasswd(Qna qnaPasswd) {
		
		return sql.selectOne("qna.passwd",qnaPasswd);
	}

	@Override
	public void answer(Qna item) {
		sql.update("qna.answer",item);
	}

	@Override
	public void deleteM(String id) {
		sql.delete("qna.deleteM", id);
	}

}
