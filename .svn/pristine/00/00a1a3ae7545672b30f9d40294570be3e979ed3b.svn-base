package springweb.d01_board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import springweb.d01_board.service.A01_BoardService;
import springweb.d01_board.vo.Board;
import springweb.d01_board.vo.Board_Sch;
import springweb.z01_dto.Schedule;

@Controller
@RequestMapping("/boardList.do")
@SessionAttributes("boardSch")
public class A01_BoardCtrl {
	
	@Autowired(required=false)
	private A01_BoardService service;
	@ModelAttribute("boardSch")
	public Board_Sch Board_Sch(){
		return new Board_Sch();
	}	
	// 게시판 list
	// http://localhost:6080/springweb/boardList.do?method=list
	@RequestMapping(params="method=list")
	public String start(@ModelAttribute("boardSch") Board_Sch sch,
							Model d){
//		if(sch.getSubject()!=null){
//			sch.setSubject(sch.getSubject()+"@");
//		}
		d.addAttribute("list", service.listBoard(sch));
		return "d01_board/a01_boardList";
	}
	// 등록 화면 호출..boardList.do?method=insert
	@RequestMapping(params="method=insert")
	public String insert(@RequestParam(value="no",
							defaultValue="0") int no, Model d){
//		System.out.println("no:"+no);
		if(no!=0)
		d.addAttribute("board",service.getReBoard(no));	
		
		return "d01_board/a02_insertBoard";
	}
	// boardList.do?method=insProc
	@RequestMapping(params="method=insProc")
	public String insertProc(Board ins, Model d){
		d.addAttribute("empsch",Board_Sch());	
		service.insertBoard(ins);
		// 등록후, 메인 조회화면으로 처리..
		return "redirect:/boardList.do?method=list";
	}	
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("no") int no, Model d){
		System.out.println("no:"+no);
		
		d.addAttribute("board", 
				service.detailBoard(no));
		return "d01_board/a03_detailBoard";
	}
	

}
