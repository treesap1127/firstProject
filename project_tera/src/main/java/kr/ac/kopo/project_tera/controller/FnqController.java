package kr.ac.kopo.project_tera.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.project_tera.model.Fnq;
import kr.ac.kopo.project_tera.service.FnqService;
import kr.ac.kopo.project_tera.util.Pager;

@Controller
@RequestMapping("/fnq")
public class FnqController {
	@Autowired
	FnqService service;
	
	final String path="fnq/";
	
	@RequestMapping({"/","/list"})
	public String list(Model model, Pager pager) {
		List<Fnq> list=service.list(pager);
		model.addAttribute("list", list);
		return path+"list";
	}
	@GetMapping("/add")
	public String list() {
		return path+"add";
	}
	@PostMapping("/add")
	public String list(Fnq item) {
		service.add(item);
		return "redirect:list";
	}
	@GetMapping("/view/{fnq}")
	public String view(@PathVariable int fnq,Model model) {
		Fnq item = service.item(fnq);
		model.addAttribute("item", item);
		return path+"view";
	}
	@GetMapping("/update/{fnq}")
	public String update(@PathVariable int fnq, Model model) {
		Fnq item = service.item(fnq);// item이란 변수를 지정하는데 Product 클래스에 서비스.item을 가져옴 code에 해당하는걸로
		model.addAttribute("item", item);// item이란 이름으로 item을 추가함!
		return path+"update";
	}
	@PostMapping("/update/{fnq}")
	public String update(@PathVariable int fnq, Fnq item) {
		item.setFnq(fnq);
		service.update(item);
		return "redirect:..";
	}
	@GetMapping("/delete/{fnq}")
	public String delete(@PathVariable int fnq) {
		service.delete(fnq);
		return "redirect:..";
	}
}
