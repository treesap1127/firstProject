package kr.ac.kopo.project_tera.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.project_tera.model.Partner;
import kr.ac.kopo.project_tera.service.IdService;
import kr.ac.kopo.project_tera.util.Pager;

@Controller
@RequestMapping("/id")
public class IdController {
	final String path="id/";
	@Autowired
	IdService service;
	@RequestMapping({"/","list"})
	public String list(Model model,Pager pager) {
		List<Partner> list =service.list(pager);
		model.addAttribute("list", list);
		return path+"id";
	}
	@GetMapping("delete/{id}")
	public String delete(@PathVariable String id) {
		service.delete(id);
		return "redirect:..";
	}
	@GetMapping("update/{id}")
	public String update(@PathVariable String id,Model model) {
		Partner item = service.item(id); //아이템이란 이름으로 담아서 넘겨주기
		   model.addAttribute("item",item);
		   return path+"update";
	}
	   @PostMapping("/update/{id}")
	   public String update(@PathVariable String id, Partner item) {
	   service.update(item);
	   return "redirect:../list";
	   }
}
