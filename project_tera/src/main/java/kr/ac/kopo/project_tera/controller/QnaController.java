package kr.ac.kopo.project_tera.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.ac.kopo.project_tera.model.Qna;
import kr.ac.kopo.project_tera.service.QnaService;
import kr.ac.kopo.project_tera.util.Pager;

@Controller
@RequestMapping("/qna")
	public class QnaController {
	@Autowired
	QnaService service;
	final String path="qna/";
	
	@RequestMapping({"/","/list"})
	public String list(Model model, Pager pager) {
		List<Qna> list=service.list(pager);
		model.addAttribute("list", list);
		return path+"list";
	}
	@GetMapping("/add")
	public String list() {
		return path+"add";
	}
	@PostMapping("/add")
	public String list(Qna item) {
		service.add(item);
		return "redirect:list";
	}
	@GetMapping("/view/{qna}")
	public String view(@PathVariable int qna,Model model) {
		Qna item = service.item(qna);
		model.addAttribute("item", item);
		return path+"view";
	}
	@GetMapping("/update/{qna}")
	public String update(@PathVariable int qna, Model model) {
		Qna item = service.item(qna);// item이란 변수를 지정하는데 Product 클래스에 서비스.item을 가져옴 code에 해당하는걸로
		model.addAttribute("item", item);// item이란 이름으로 item을 추가함!
		return path+"update";
	}
	@PostMapping("/update/{qna}")
	public String update(@PathVariable int qna, Qna item) {
		item.setQna(qna);
		service.update(item);
		return "redirect:..";
	}
	@GetMapping("/delete/{qna}")
	public String delete(@PathVariable int qna) {
		service.delete(qna);
		return "redirect:..";
	}
	@GetMapping("/answer/{qna}")
	public String answer(@PathVariable int qna, Model model) {
		Qna item = service.item(qna);// item이란 변수를 지정하는데 Product 클래스에 서비스.item을 가져옴 code에 해당하는걸로
		model.addAttribute("item", item);// item이란 이름으로 item을 추가함!
		return path+"answer";
	}
	@PostMapping("/answer/{qna}")
	public String answer(@PathVariable int qna, Qna item) {
		item.setQna(qna);
		service.answer(item);
		return "redirect:..";
	}
}

