package kr.ac.kopo.project_tera.dao;

import java.util.List;

import kr.ac.kopo.project_tera.model.Partner;
import kr.ac.kopo.project_tera.util.Pager;

public interface IdDao {

	int total(Pager pager);

	List<Partner> list(Pager pager);

	Partner item(String id);

	void update(Partner item);

}
