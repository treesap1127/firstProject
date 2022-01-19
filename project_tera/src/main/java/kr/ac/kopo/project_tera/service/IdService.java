package kr.ac.kopo.project_tera.service;

import java.util.List;

import kr.ac.kopo.project_tera.model.Partner;
import kr.ac.kopo.project_tera.util.Pager;

public interface IdService {

	List<Partner> list(Pager pager);

	void delete(String id);

	Partner item(String id);

	void update(Partner item);

}
