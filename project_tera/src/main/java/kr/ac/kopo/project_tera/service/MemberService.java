package kr.ac.kopo.project_tera.service;

import java.util.List;

import kr.ac.kopo.project_tera.model.Member;
import kr.ac.kopo.project_tera.util.Pager;

public interface MemberService {

	List<Member> list(Pager pager);

	Member item(int code);

	void add(Member item);

	void update(Member item);

	void deleteList(List<Integer> list);

}
