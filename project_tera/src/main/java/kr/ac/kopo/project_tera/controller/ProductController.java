package kr.ac.kopo.project_tera.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	@RequestMapping("/product1/")
	public String view1() {
		return "product/product1";
	}
	@RequestMapping("/product2/")
	public String view2() {
		return "product/product2";
	}
	@RequestMapping("/product3/")
	public String view3() {
		return "product/product3";
	}
	@RequestMapping("/product4/")
	public String view4() {
		return "product/product4";
	}
}
