package kr.ac.kopo.project_tera.dao;

import java.util.List;

import kr.ac.kopo.project_tera.model.Fnq;
import kr.ac.kopo.project_tera.util.Pager;

public interface FnqDao {

	int total(Pager pager);

	List<Fnq> list(Pager pager);

	void add(Fnq item);

	void update(Fnq item);

	Fnq item(int fnq);

	void delete(int fnq);

	void deleteM(String id);
}	
