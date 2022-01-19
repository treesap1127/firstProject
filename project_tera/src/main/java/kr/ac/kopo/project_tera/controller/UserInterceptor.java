package kr.ac.kopo.project_tera.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import kr.ac.kopo.project_tera.model.Partner;

public class UserInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		try {
		HttpSession session =request.getSession();
		Partner partner=(Partner) session.getAttribute("partner");
		System.out.println("UserInterceptor");
		if(partner.getGrade() >=1) return true;
		}
		catch(NullPointerException e) {
			response.sendRedirect("../../../login/");
			return false;
		}
		response.sendRedirect("../../../login/");
		return false;
	}
	
}