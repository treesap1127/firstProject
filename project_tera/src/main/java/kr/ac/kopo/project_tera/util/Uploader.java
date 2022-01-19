package kr.ac.kopo.project_tera.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class Uploader<T extends UploadFile> {
	//uploadFile 을 구현함= 아 이름같은거 넣어주는걸 구현했다고!
	final String uploadPath = "E:/upload/";
	
	public List<T> makeList(List<MultipartFile> files,Class<T> type) throws Exception {
		//뭐 들어올지는 모르지만--클래스 형식이 들어와야한다! 리스트에 멀티파트 파일이랑 그걸 담아줄 모델을 찾는다
		List<T> result =new ArrayList<>();
		//뭐 들어올지는 모르지만 배열로 만들어줌 이걸로 다 담아서 보내줄꺼임.
		for(MultipartFile file : files) {
			if(!file.isEmpty()){//비어있지 않을떄만 등록해줄꺼임!
				
				String filename = file.getOriginalFilename();
				//오리지널 파일 이름 따로 뽑네
				String uuid =UUID.randomUUID().toString();
				System.out.println(filename);
				//파일 들어갔는지 이름 확인
				file.transferTo(new File(uploadPath+uuid+"_"+filename));
				//파일 넣어주는데 위치 삽입
				@SuppressWarnings("deprecation")//사용하지 말아야할 메소드 억제!--transferTo
				T item = type.newInstance();//아 여기서 새로운 T타입의 담아주는 통 역할을 해주는구나!
				//?
				item.setFilename(filename);
				item.setUUID(uuid);
				// 아이템에 넣어주고 \List<T>에 아이템 넣어주네?
				result.add(item);

				
				}
			}
		return result;
	
	}

}
