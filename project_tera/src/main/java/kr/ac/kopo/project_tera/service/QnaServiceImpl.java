package kr.ac.kopo.project_tera.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.project_tera.dao.QnaDao;
import kr.ac.kopo.project_tera.model.Qna;
import kr.ac.kopo.project_tera.util.Pager;
@Service
public class QnaServiceImpl implements QnaService {
	@Autowired
	QnaDao dao;
	@Override
	public List<Qna> list(Pager pager) {
		int total= dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}

	@Override
	public void add(Qna item) {
		dao.add(item);
	}

	@Override
	public Qna item(int qna) {
		return dao.item(qna);
	}

	@Override
	public void update(Qna item) {
		dao.update(item);
	}

	@Override
	public boolean lockPasswd(Qna qnaPasswd) {
		if(dao.lockPasswd(qnaPasswd)>=1)
			return true;
		return false;
	}

	@Override
	public void delete(int item) {
		dao.delete(item);
	}

	@Override
	public void answer(Qna item) {
		dao.answer(item);
		
	}



}
