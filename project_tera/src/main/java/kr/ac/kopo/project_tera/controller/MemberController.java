package kr.ac.kopo.project_tera.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.project_tera.model.Member;
import kr.ac.kopo.project_tera.service.MemberService;
import kr.ac.kopo.project_tera.util.Pager;

@RequestMapping("/api")
@RestController
public class MemberController {
	@Autowired
	MemberService service;

	@GetMapping
	   public Map<String, Object> list(Pager pager){
		   HashMap<String, Object> map = new HashMap<String, Object>();
		   map.put("list",service.list(pager));
		   map.put("pager", pager);
	      return map;
	   }
	@GetMapping("/{code}")
	   public Member item(@PathVariable int code) {
	      return service.item(code);
	   }
	@PostMapping
	public Member add(@RequestBody Member item) {
		service.add(item);
		return item;
	}
	@PutMapping
	public Member update(@RequestBody Member item) {
	  service.update(item);
	return item;
	}
	@PostMapping("/delete/list")//제이슨 받으면 이렇게만 해줘도 됨 이름으로 맵핑안시킨다,,
	public List<Integer> deleteList(@RequestBody List<Integer> list) {
		service.deleteList(list);
	return list;
	   }
	   
}
