package kr.ac.kopo.project_tera.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.project_tera.model.Qna;
import kr.ac.kopo.project_tera.service.QnaService;
@RequestMapping("/lock")
@RestController
public class QnajsController {
	@Autowired
	QnaService service;
	@PutMapping
	public String lock(@RequestBody Qna item) {
		if(service.lockPasswd(item))
			return "OK";
		else return "FAIL";
	}
}
