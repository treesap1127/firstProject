package kr.ac.kopo.project_tera.dao;

import java.util.List;

import kr.ac.kopo.project_tera.model.Member;
import kr.ac.kopo.project_tera.util.Pager;

public interface MemberDao {

	int total(Pager pager);

	List<Member> list(Pager pager);

	Member item(int code);

	void add(Member item);

	void update(Member item);

	String haveid(int code);

	void delete(int code);

}
