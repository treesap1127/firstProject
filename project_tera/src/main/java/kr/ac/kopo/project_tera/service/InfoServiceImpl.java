package kr.ac.kopo.project_tera.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.project_tera.dao.InfoDao;
import kr.ac.kopo.project_tera.dao.InfoFileDao;
import kr.ac.kopo.project_tera.model.Info;
import kr.ac.kopo.project_tera.model.InfoFile;
import kr.ac.kopo.project_tera.util.Pager;
@Service
public class InfoServiceImpl implements InfoService {
	@Autowired
	InfoDao dao;
	@Autowired
	InfoFileDao fileDao;
	@Override
	public List<Info> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		
		return dao.list(pager);
	}
	@Transactional
	@Override
	public void add(Info item) {
		dao.add(item);
		if(item.getMultfile() !=null) {
			for(InfoFile file : item.getMultfile()) {
				file.setInfo(item.getData());
				fileDao.add(file);
			}
		}
	}

	@Override
	public void count(int data) {
		dao.count(data);

	}

	@Override
	public Info item(int data) {
		return dao.item(data);
	}

	@Override
	public void update(Info item) {
		dao.update(item);
		if(item.getMultfile() !=null) {
			for(InfoFile file : item.getMultfile()) {
				file.setInfo(item.getData());
				
				fileDao.add(file);
			}
		}
	}
	@Override
	public void delete(int data) {
		Info item = dao.item(data);
		
		for (InfoFile files : item.getMultfile()) {
			fileDao.delete(files.getCode());
			System.out.println(files.getCode());
		}
		dao.delete(data);
	}

	@Override
	public boolean deleteFile(int code) {
		return fileDao.delete(code);
	}
	@Override
	public InfoFile file(int code) {
		List<InfoFile> list = dao.file(code);
		InfoFile file = new InfoFile();
		file.setFilename(list.get(0).getFilename());
		file.setUUID(list.get(0).getUUID());
		System.out.println(file);
		return file;
	}

}
