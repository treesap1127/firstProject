package kr.ac.kopo.project_tera.controller;

import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.kopo.project_tera.model.Info;
import kr.ac.kopo.project_tera.model.InfoFile;
import kr.ac.kopo.project_tera.service.InfoService;
import kr.ac.kopo.project_tera.util.Pager;
import kr.ac.kopo.project_tera.util.Uploader;

@Controller
@RequestMapping("/info")
public class InfoController {
	@Autowired
	InfoService service;
	
	final String path = "info/";
	
	@RequestMapping({"/","/list"})
	public String list(Model model, Pager pager,RedirectAttributes ra) {
		List<Info> list=service.list(pager);
		model.addAttribute("list", list);
		return path+"list";
	}
	@GetMapping("/add")
	public String add() {
		return path+"add";
	}
	@PostMapping("/add")
	public String add(Info item, @RequestParam("infoFile") List<MultipartFile> infoFile) {
		try {
		Uploader<InfoFile> uploder=new Uploader<>();
		List<InfoFile> multfile=uploder.makeList(infoFile, InfoFile.class);
		item.setMultfile(multfile);
		
		service.add(item);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:list";
	}
	@GetMapping("/view/{data}")
	public String view(@PathVariable int data,Model model,HttpSession session) {

		if(session.getAttribute("data"+data)!="data") {
			session.setAttribute("data"+data,"data");
			service.count(data);
		}
		Info item = service.item(data);
		model.addAttribute("item", item);
		return path+"view";
	}
	
	@GetMapping("/update/{data}")
	public String update(@PathVariable int data, Model model) {
		Info item = service.item(data);// item이란 변수를 지정하는데 Product 클래스에 서비스.item을 가져옴 code에 해당하는걸로
		model.addAttribute("item", item);// item이란 이름으로 item을 추가함!
		return path+"update";
	}
	@PostMapping("/update/{data}")
	public String update(@PathVariable int data, Info item,@RequestParam("infoFile") List<MultipartFile> infoFile) {
		item.setData(data);
		System.out.println(item.getMultfile());
		try {
			Uploader<InfoFile> uploader=new Uploader<>();
			
			List<InfoFile>files=uploader.makeList(infoFile,InfoFile.class);
			
			item.setMultfile(files);//파일 일단 순수 노티스 파일에 셋팅 모델 역할
			
			service.update(item);
		
		}
		 catch (Exception e) {
				e.printStackTrace();
			}
		return "redirect:..";
		
	}
	@GetMapping("/delete/{data}")
	public String delete(@PathVariable int data) {
		service.delete(data);
		return "redirect:..";
	}
	
	@ResponseBody
	@GetMapping("/file/delete/{code}")
		public boolean deleteFile(@PathVariable int code){
		
		return service.deleteFile(code);
	}
	
	@GetMapping("/view/download/{code}")
	   public void download(HttpServletResponse response,@PathVariable int code) throws Exception {
		InfoFile list =service.file(code);
		String filename =list.getFilename();
		
   	System.out.println("D:\\upload\\"+list.getUUID()+"_"+list.getFilename());
   	System.out.println(((InfoFile) list).getFilename()+"=파일이름");
		
	try {
				
	              	
	              String path = "E:\\upload\\"+list.getUUID()+"_"+filename; // 경로에 접근할 때 역슬래시('\') 사용
	              
	              response.setHeader("Content-Disposition", "attachment;filename=" +URLEncoder.encode(list.getFilename(), StandardCharsets.UTF_8)); 
	              // 다운로드 되거나 로컬에 저장되는 용도로 쓰이는지를 알려주는 헤더
	              //이게 이름 바꿔주는거 ㅇㅇ 파일 저장하면 파일 이름으로 저장 할 수 있도록 도와줌
	              
	              @SuppressWarnings("resource")
	              FileInputStream fileInputStream = new FileInputStream(path);
	              // FileInputStream = 파일 연결과 전송 시켜주는것
	              OutputStream out = response.getOutputStream();   //다운로드 시켜주는거
	              
	              int read = 0;
	                   byte[] buffer = new byte[1024];
	                   while ( (read = fileInputStream.read(buffer) ) != -1) { 
	                      // 1024바이트씩 계속 읽으면서 outputStream에 저장, -1이 나오면 더이상 읽을 파일이 없음
	                       out.write(buffer, 0, read);
	                   }
	           } catch (Exception e) {
	               throw new Exception("download error");
	       }
	    }
}
