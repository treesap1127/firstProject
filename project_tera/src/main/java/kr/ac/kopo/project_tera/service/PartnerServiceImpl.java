package kr.ac.kopo.project_tera.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.project_tera.dao.PartnerDao;
import kr.ac.kopo.project_tera.model.Partner;
@Service
public class PartnerServiceImpl implements PartnerService {
@Autowired
PartnerDao dao;
	@Override
	public boolean login(Partner partner) {
	Partner item =dao.item(partner);
	if(item!=null) {
		partner.setId(item.getId());
		partner.setPasswd(null);
		partner.setJobCode(item.getJobCode());
		partner.setGrade(item.getGrade());
		return true;
	}
		
		return false;
	}

	@Override
	public void add(Partner partner) {
		dao.add(partner);
	}

	@Override
	public boolean checkId(String id) {
		if(dao.checkId(id)==0)
			return true;
		else
		return false;
	}

	@Override
	public boolean checkJobcode(String check_job) {
		if(dao.checkjob(check_job)!=0) {
			return true;
		}
		else {return false;}
	}

}
