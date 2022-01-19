package kr.ac.kopo.project_tera.service;

import kr.ac.kopo.project_tera.model.Partner;

public interface PartnerService {

	boolean login(Partner partner);

	void add(Partner partner);

	boolean checkId(String id);

	boolean checkJobcode(String check_job);

}
