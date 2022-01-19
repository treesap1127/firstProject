package kr.ac.kopo.project_tera.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.project_tera.dao.NoticeDao;
import kr.ac.kopo.project_tera.dao.NoticeFileDao;
import kr.ac.kopo.project_tera.model.Notice;
import kr.ac.kopo.project_tera.model.NoticeFile;
import kr.ac.kopo.project_tera.util.Pager;
@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDao dao;
	@Autowired
	NoticeFileDao fileDao;
	@Override
	public List<Notice> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	@Transactional
	public void add(Notice item) {
		if(item.getGrade()==0) {
			item.setNoticeName("[전체] "+item.getNoticeName());
		}

		else if(item.getGrade()==1) {
			item.setNoticeName("[회원] "+item.getNoticeName());
		}
		
		dao.add(item);
		if(item.getMultfile() !=null) {
			for(NoticeFile file : item.getMultfile()) {
				file.setNoticeCode(item.getNotice());
				fileDao.add(file);
			}
		}
	}
	@Override
	public Notice item(int notice) {
		return dao.item(notice);
	}
	@Override
	@Transactional
	public void update(Notice item) {
		dao.update(item);
		if(item.getMultfile() !=null) {
			for(NoticeFile file : item.getMultfile()) {
				file.setNoticeCode(item.getNotice());
				
				fileDao.add(file);
			}
		}
	}
	@Override
	@Transactional
	public void delete(int notice) {
		Notice item = dao.item(notice);
		
		for (NoticeFile files : item.getMultfile()) {
			fileDao.delete(files.getCode());
			System.out.println(files.getCode());
		}
		dao.delete(notice);
	}
	@Override
	public boolean deleteFile(int code) {
		System.out.println(code);
		return fileDao.delete(code);
	}

	@Override
	public void count(int notice) {
		dao.count(notice);
		
	}

	@Override
	public NoticeFile file(int code) {
		List<NoticeFile> list = dao.file(code);
		NoticeFile file = new NoticeFile();
		file.setFilename(list.get(0).getFilename());
		file.setUUID(list.get(0).getUUID());
		
		return file;
	}
}