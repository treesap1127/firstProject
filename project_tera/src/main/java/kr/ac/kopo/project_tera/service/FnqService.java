package kr.ac.kopo.project_tera.service;

import java.util.List;

import kr.ac.kopo.project_tera.model.Fnq;
import kr.ac.kopo.project_tera.util.Pager;

public interface FnqService {

	List<Fnq> list(Pager pager);

	void add(Fnq item);

	Fnq item(int fnq);

	void update(Fnq item);

	void delete(int fnq);

}
