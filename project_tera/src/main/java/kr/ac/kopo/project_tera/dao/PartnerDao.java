package kr.ac.kopo.project_tera.dao;

import kr.ac.kopo.project_tera.model.Partner;

public interface PartnerDao {

	Partner item(Partner partner);

	void add(Partner partner);

	int checkId(String id);

	int checkjob(String check_job);

	void deleteM(String id);
}
