package kr.ac.kopo.project_tera.dao;

import java.util.List;

import kr.ac.kopo.project_tera.model.Qna;
import kr.ac.kopo.project_tera.util.Pager;

public interface QnaDao {

	int total(Pager pager);

	List<Qna> list(Pager pager);

	Qna item(int qna);

	void update(Qna item);

	void delete(int item);

	void add(Qna item);

	int lockPasswd(Qna qnaPasswd);

	void answer(Qna item);

	void deleteM(String id);

}
