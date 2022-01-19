package kr.ac.kopo.project_tera.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.project_tera.dao.FnqDao;
import kr.ac.kopo.project_tera.dao.InfoDao;
import kr.ac.kopo.project_tera.dao.InfoFileDao;
import kr.ac.kopo.project_tera.dao.MemberDao;
import kr.ac.kopo.project_tera.dao.NoticeDao;
import kr.ac.kopo.project_tera.dao.NoticeFileDao;
import kr.ac.kopo.project_tera.dao.PartnerDao;
import kr.ac.kopo.project_tera.dao.QnaDao;
import kr.ac.kopo.project_tera.model.Info;
import kr.ac.kopo.project_tera.model.InfoFile;
import kr.ac.kopo.project_tera.model.Member;
import kr.ac.kopo.project_tera.model.Notice;
import kr.ac.kopo.project_tera.model.NoticeFile;
import kr.ac.kopo.project_tera.util.Pager;
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao dao;
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
	public List<Member> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}

	@Override
	public Member item(int code) {
		return dao.item(code);
	}

	@Override
	public void add(Member item) {
		dao.add(item);		
	}

	@Override
	public void update(Member item) {
		dao.update(item);		
	}
	@Transactional
	@Override
	public void deleteList(List<Integer> list) {
		String id;
		for(int codem: list) {
			int code= codem;
			id=dao.haveid(code);
			
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
			dao.delete(code);
		}
	}
			
		
}
