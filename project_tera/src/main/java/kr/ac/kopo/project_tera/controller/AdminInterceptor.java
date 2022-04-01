package kr.ac.kopo.project_tera.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.project_tera.model.Partner;
@Controller
public class AdminInterceptor extends HandlerInterceptorAdapter {
	
//	@Autowired
//	AdminService service;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("AdminInterceptor");
		HttpSession session =request.getSession();
		Partner partner=(Partner) session.getAttribute("partner");
		if(partner.getGrade() >=2) return true;
		
		response.sendRedirect("../../../login/");
		return false;
	}
	
}