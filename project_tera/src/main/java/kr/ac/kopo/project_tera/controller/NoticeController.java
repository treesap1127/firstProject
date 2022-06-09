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

import kr.ac.kopo.project_tera.model.Notice;
import kr.ac.kopo.project_tera.model.NoticeFile;
import kr.ac.kopo.project_tera.service.NoticeService;
import kr.ac.kopo.project_tera.util.Pager;
import kr.ac.kopo.project_tera.util.Uploader;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	final String path="notice/";
	
	@Autowired
	NoticeService service;

	@RequestMapping({"/","list"})
 	public String list(Model model,Pager pager) {
		List<Notice> list=service.list(pager);
		model.addAttribute("list", list);
		
		return path+"list";
	}
	@GetMapping("/add")
	public String add() {
		return path+"add";
	}
	@PostMapping("/add")
	public String add(Notice item,@RequestParam("noticeFile") List<MultipartFile> noticeFile) {
		//파일만 따로 선언
		try {
			//일단 파일 업로드 부터하네.
			//Upload는 제네릭 설정 해줘야함! 타입이 항상 다를 수 있으니 ㅇㅇ
			Uploader<NoticeFile> uploader=new Uploader<>();
			
			List<NoticeFile>file=uploader.makeList(noticeFile,NoticeFile.class);
			//,Class<T> type 이건뭐지
			//자 요게 파일을 리스트로 넣고
			
			item.setMultfile(file);//파일 일단 순수 노티스 파일에 셋팅 모델 역할
			
			service.add(item);//<--요게 파일 위치만 저장해주는거임!
		}
		 catch (Exception e) {
				e.printStackTrace();
			}
		return "redirect:list";
	}
	@GetMapping("/update/{notice}")
	public String update(@PathVariable int notice, Model model) {
		Notice item = service.item(notice);// item이란 변수를 지정하는데 Product 클래스에 서비스.item을 가져옴 code에 해당하는걸로
		model.addAttribute("item", item);// item이란 이름으로 item을 추가함!
		return path+"update";
	}
	@PostMapping("/update/{notice}")
	public String update(@PathVariable int notice, Notice item,@RequestParam("noticeFile") List<MultipartFile> noticeFile) {
		item.setNotice(notice);
		System.out.println(item.getMultfile());
		try {
			Uploader<NoticeFile> uploader=new Uploader<>();
			
			List<NoticeFile>files=uploader.makeList(noticeFile,NoticeFile.class);//업로더에 맞게 만드는
			
			item.setMultfile(files);//파일 일단 순수 노티스 파일에 셋팅 모델 역할
			
			service.update(item);
		
		}
		 catch (Exception e) {
				e.printStackTrace();
			}
		return "redirect:..";
		
	}
	@GetMapping("/delete/{notice}")
	public String delete(@PathVariable int notice) {
		service.delete(notice);
		return "redirect:..";
	}
	
	@ResponseBody
	@GetMapping("/file/delete/{code}")
		public boolean deleteFile(@PathVariable int code){
		
		return service.deleteFile(code);
	}
	@GetMapping("/view/{notice}")
	public String view(@PathVariable int notice,Model model,HttpSession session) {

		if(session.getAttribute("notice"+notice)!="notice") {
			session.setAttribute("notice"+notice,"notice");
			service.count(notice);
		}
		Notice item = service.item(notice);
		System.out.println(service.item(notice));
		model.addAttribute("item", item);

		return path+"view";
	}
	@GetMapping("/view/download/{code}")
	   public void download(HttpServletResponse response,@PathVariable int code) throws Exception {
		NoticeFile list =service.file(code);
		String filename =list.getFilename();
		
      	System.out.println("D:\\upload\\"+list.getUUID()+"_"+list.getFilename());
      	System.out.println(((NoticeFile) list).getFilename()+"=파일이름");
		
	try {
				
	              	
	              String path = "D:\\upload\\"+list.getUUID()+"_"+filename; // 경로에 접근할 때 역슬래시('\') 사용
	              
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

