package springweb.f01_file;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

// springweb.f01_file.A01_FileCtrl.java
@Controller
@RequestMapping("/upload.do")
public class A01_FileCtrl {
	@RequestMapping(method=RequestMethod.GET)
	public String form(){
		return "f01_file/a01_uploadForm";
	}
	@RequestMapping(method=RequestMethod.POST)
	public String upload(@RequestParam("report") 
			MultipartFile report, Model d){
		System.out.println("서버에 온파일 이름:"
				+report.getOriginalFilename());	
		// service 단 처리..
		uploadProc(report);
		d.addAttribute("fname", report.getOriginalFilename());
		
		return "f01_file/a01_uploadForm";
	}
	// <input name="fname" />
	// <input name="report" />
	// 파일이름과 넘겨온 스트림형태의 객체를 server에 특정한 위치에 저장
//	@Value("#{props['upload']}")

	
//	classpath:/resource/properties/info01
	@Value("${upload}")
	String path01;
	private void uploadProc( MultipartFile report){
		String name=report.getOriginalFilename();
		
//		path01="C:/a01_prog/eclipse/workspace_server"
//				+ "/springweb/WebContent/z02_upload/";
		// 해당 경로로 파일을 할당처리..
		String file01 = path01+name;
		File f1 = new File(file01);
		// io로 exception 처리 필요
		try {
			report.transferTo(f1);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
}
