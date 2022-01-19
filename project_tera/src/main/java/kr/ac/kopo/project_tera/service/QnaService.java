package kr.ac.kopo.project_tera.service;

import java.util.List;

import kr.ac.kopo.project_tera.model.Qna;
import kr.ac.kopo.project_tera.util.Pager;

public interface QnaService {

	List<Qna> list(Pager pager);

	void add(Qna item);

	Qna item(int qna);

	void update(Qna item);

	void delete(int qna);

	boolean lockPasswd(Qna item);

	void answer(Qna item);

}
