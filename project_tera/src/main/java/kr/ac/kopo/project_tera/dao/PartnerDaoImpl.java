package kr.ac.kopo.project_tera.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.project_tera.model.Partner;
@Repository
public class PartnerDaoImpl implements PartnerDao {
@Autowired
SqlSession sql;
	@Override
	public Partner item(Partner partner) {
		return sql.selectOne("partner.login", partner);
	}

	@Override
	public void add(Partner partner) {
		sql.insert("partner.add", partner);		
	}

	@Override
	public int checkId(String id) {
		return sql.selectOne("partner.check_id", id);
	}

	@Override
	public int checkjob(String check_job) {
		return sql.selectOne("partner.check_job", check_job);
	}

	@Override
	public void deleteM(String id) {
		sql.delete("partner.deleteM", id);
		
	}

}
