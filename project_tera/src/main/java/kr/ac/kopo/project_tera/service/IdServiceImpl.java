package kr.ac.kopo.project_tera.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.project_tera.dao.FnqDao;
import kr.ac.kopo.project_tera.dao.IdDao;
import kr.ac.kopo.project_tera.dao.InfoDao;
import kr.ac.kopo.project_tera.dao.InfoFileDao;
import kr.ac.kopo.project_tera.dao.NoticeDao;
import kr.ac.kopo.project_tera.dao.NoticeFileDao;
import kr.ac.kopo.project_tera.dao.PartnerDao;
import kr.ac.kopo.project_tera.dao.QnaDao;
import kr.ac.kopo.project_tera.model.Info;
import kr.ac.kopo.project_tera.model.InfoFile;
import kr.ac.kopo.project_tera.model.Notice;
import kr.ac.kopo.project_tera.model.NoticeFile;
import kr.ac.kopo.project_tera.model.Partner;
import kr.ac.kopo.project_tera.util.Pager;
@Service
public class IdServiceImpl implements IdService {
	@Autowired
	IdDao dao;
	@Autowired
	NoticeDao noticedao;
	@Autowired
	NoticeFileDao noticefileDao;
	@Autowired
	InfoDao infodao;
	@Autowired
	InfoFileDao infofileDao;
	@Autowired
	QnaDao qnadao;
	@Autowired
	FnqDao fnqdao;
	@Autowired
	PartnerDao partnerdao;
	@Override
	public List<Partner> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
		
		
	}

	@Override
	@Transactional
	public void delete(String id) {
		
		Notice noticeitem = noticedao.itemM(id);
		if(noticeitem!=null) {
		for (NoticeFile files : noticeitem.getMultfile()) {
		noticefileDao.delete(files.getCode());
		System.out.println(files.getCode());
	}}
		noticedao.deleteM(id);
		
		Info item = infodao.itemM(id);
		if(item!=null){
		for (InfoFile files : item.getMultfile()) {
			infofileDao.delete(files.getCode());
			System.out.println(files.getCode());
		}}
		infodao.deleteM(id);
		
		qnadao.deleteM(id);
		fnqdao.deleteM(id);
		partnerdao.deleteM(id);
	}

	@Override
	public Partner item(String id) {
		return dao.item(id);
	}

	@Override
	public void update(Partner item) {
		dao.update(item);
	}

}
