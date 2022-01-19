package kr.ac.kopo.project_tera.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.project_tera.model.Info;
import kr.ac.kopo.project_tera.model.InfoFile;
import kr.ac.kopo.project_tera.util.Pager;
@Repository
public class InfoDaoImpl implements InfoDao {
	@Autowired
	SqlSession sql;
	@Override
	public int total(Pager pager) {
		return sql.selectOne("info.total",pager);
	}

	@Override
	public List<Info> list(Pager pager) {
		return sql.selectList("info.list",pager);
	}

	@Override
	public void add(Info item) {
		sql.insert("info.add", item);

	}

	@Override
	public void count(int data) {
		sql.update("info.count",data);

	}

	@Override
	public Info item(int data) {
		return sql.selectOne("info.item",data);
	}

	@Override
	public void update(Info item) {
		sql.update("info.update",item);

	}

	@Override
	public void delete(int data) {
		sql.delete("info.delete", data);

	}

	@Override
	public List<InfoFile> file(int code) {
		return sql.selectList("info_file.item",code);
	}

	@Override
	public void deleteM(String id) {
		sql.delete("info.delete", id);
		
	}

	@Override
	public Info itemM(String id) {
		return sql.selectOne("info.item",id);
	}

}
