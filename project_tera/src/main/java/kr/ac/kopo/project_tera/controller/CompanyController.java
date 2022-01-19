package kr.ac.kopo.project_tera.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyController {
	@RequestMapping("/greeting/")
	public String greeting() {
		return "company/greeting";
	}
	@RequestMapping("/history/")
	public String history() {
		return "company/history";
	}
	@RequestMapping("/division/")
	public String division() {
		return "company/division";
	}
	@RequestMapping("/patent/")
	public String patent() {
		return "company/patent";
	}
	@RequestMapping("/road/")
	public String road() {
		return "company/road";
	}
	@RequestMapping("/member/")
	public String member() {
		return "member";
	}
}
