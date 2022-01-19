package kr.ac.kopo.project_tera.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.kopo.project_tera.model.Partner;
import kr.ac.kopo.project_tera.service.PartnerService;

@Controller
public class RootController {
	final String path="login/";
	
	@Autowired
	PartnerService partnerservice;

	@RequestMapping("/")
	public String mainpage(HttpSession session,Partner partner) {
		if(session.getAttribute("partner")==null) {
		partner.setGrade(0);
		session.setAttribute("partner",partner);
		}
		return "mainpage";
	}
	@GetMapping("/login")
	public String login() {//   /index 파일을 찾게 만듬
		return path+"login"; //값을 index로 보냄
	}

	@PostMapping("/login")
	public String login(Partner partner,HttpSession session, RedirectAttributes ra) {//   /index 파일을 찾게 만듬
		if(partnerservice.login(partner)) {
			session.setAttribute("partner", partner);
			
			return "redirect:../";
		}
		else {
			ra.addFlashAttribute("msg", "false");
			
		return "redirect:.";}
		 //값을 index로 보냄
	}

	@GetMapping("/login/signup")
	public String signup() {//   /index 파일을 찾게 만듬
		return path+"signup"; //값을 index로 보냄
	}

	@PostMapping("/login/signup")
	public String signup(Partner partner,RedirectAttributes ra) {

		String check_job=partner.getJobCode();
		boolean pass_job=partnerservice.checkJobcode(check_job);
		if(pass_job==true) {
			System.out.println("성공으로 넘어옴");
			partnerservice.add(partner);
			ra.addFlashAttribute("checkLogin", "true");

			return "redirect:../";
		}
		else {
			ra.addFlashAttribute("checkLogin", "false");
			System.out.println("실패로넘어옴.");
			ra.addFlashAttribute("msg", "false");
			return "redirect:.";
		}
	}

	@ResponseBody
	@GetMapping("/login/signup/checkId")
	public String checkId(String id) {

		if(partnerservice.checkId(id))
			return "OK";
		else return "FAIL";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:.";
	}
}