package kr.ac.kopo.project_tera.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.project_tera.dao.FnqDao;
import kr.ac.kopo.project_tera.model.Fnq;
import kr.ac.kopo.project_tera.util.Pager;
@Service
public class FnqServiceImpl implements FnqService {
	@Autowired
	FnqDao dao;
	@Override
	public List<Fnq> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Fnq item) {
		dao.add(item);
	}

	@Override
	public Fnq item(int fnq) {
		return dao.item(fnq);
	}

	@Override
	public void update(Fnq item) {
		dao.update(item);

	}

	@Override
	public void delete(int fnq) {
		dao.delete(fnq);

	}

}
