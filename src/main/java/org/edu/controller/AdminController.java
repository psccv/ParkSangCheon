package org.edu.controller;

import java.io.File;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.edu.service.IF_BoardService;
import org.edu.service.IF_MemberService;
import org.edu.vo.BoardVO;
import org.edu.vo.MemberVO;
import org.springframework.cglib.reflect.MethodDelegate;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AdminController {
	
	@Inject
	private IF_MemberService memberService;
	@Inject
	private IF_BoardService boardService;
	//첨부파일 업로드 경로를 변수값으로 가져옴 servlet-context
	@Resource(name="uploadPath")
	private String uploadPath;
	/**
	 * 관리자 홈
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "admin/home";
	}
	/**
	 * 회원관리 목록 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/list", method = RequestMethod.GET)
	public String memberList(Locale locale, Model model) throws Exception {
		List<MemberVO>list = memberService.selectMember();
		//model매개변수에 memberService에서 Select한 list값을 memberList란
		//이름으로 사용할 수 있도록 jsp화면으로 보낸다.
		//model { list -> memberList -> jsp }
		model.addAttribute("memberList", list);
		return "admin/member/member_list";
	}
	/**
	 * 회원관리 상세보기 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/view", method = RequestMethod.GET)
	public String memberView(@RequestParam("user_id") String user_id, Locale locale, Model model) throws Exception {
		MemberVO memberVO = memberService.viewSelect(user_id);
		model.addAttribute("memberVO", memberVO);
		return "admin/member/member_view";
	}
	/**
	 * 회원관리 등록 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/write", method = RequestMethod.GET)
	public String memberWrite(Locale locale, Model model) throws Exception {
		return "admin/member/member_write";
	}
	@RequestMapping(value = "/admin/member/write", method = RequestMethod.POST)
	public String memberWrite(MemberVO memberVO, Locale locale, RedirectAttributes rdat) throws Exception {
		memberService.insertMember(memberVO);
		rdat.addFlashAttribute("msg", "writeSuccess");
		return "redirect:/admin/member/list";
	}
	/**
	 * 회원관리 수정 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/update", method = RequestMethod.GET)
	public String memberUpdate(@RequestParam("user_id") String user_id, Locale locale, Model model) throws Exception {
		MemberVO memberVO = memberService.viewSelect(user_id);
		model.addAttribute("memberVO", memberVO);
		return "admin/member/member_update";
	}
	@RequestMapping(value = "/admin/member/update", method = RequestMethod.POST)
	public String memberUpdate(MemberVO memberVO, Locale locale, RedirectAttributes rdat) throws Exception {
		memberService.updateMember(memberVO);
		rdat.addFlashAttribute("msg", "updateSuccess");
		return "redirect:/admin/member/view?user_id=" + memberVO.getUser_id();
	}
	/**
	 * 회원관리 삭제 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/member/delete", method = RequestMethod.POST)
	public String memberDelete(@RequestParam("user_id") String user_id, Locale locale, RedirectAttributes rdat) throws Exception {
		memberService.deleteMember(user_id);
		rdat.addFlashAttribute("msg", "deleteSuccess");
		return "redirect:/admin/member/list";
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////
	
	/**
	 * 게시물관리 목록 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/list", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model) throws Exception {
		List<BoardVO> list = boardService.selectBoard();
		//model매개변수에 boardService에서 Select한 list값을 boardList란
		//이름으로 사용할 수 있도록 jsp화면으로 보낸다.
		//model { list -> boardList -> jsp }
		model.addAttribute("boardList", list);
		return "admin/board/board_list";
	}
	/**
	 * 게시물관리 상세보기 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/view", method = RequestMethod.GET)
	public String boardView(@RequestParam("bno") Integer bno, Locale locale, Model model) throws Exception {
		BoardVO boardVO = boardService.viewBoard(bno);
		//첨부파일명 출력
		List<String> files = boardService.selectAttach(bno);
		
		String[] fileNames= {};
		for(String fileName : files) {
			fileNames = new String[] {fileName};
		}
		
		//String[] fileNames = new String[] {files}; 
		boardVO.setFiles(fileNames);
		
		model.addAttribute("boardVO", boardVO);
		return "admin/board/board_view";
	}
	/**
	 * 게시물관리 상세보기 첨부파일 다운로드 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	@ResponseBody
	public FileSystemResource fileDownload(@RequestParam("fileName") String fileName, HttpServletResponse response) {
		File file = new File(uploadPath + "/" + fileName);
		response.setContentType("application/download; utf-8");
		response.setHeader("content-disposition", "attachment; fileName=" + fileName);
		return new FileSystemResource(file);
	}
	
	
	/**
	 * 게시물관리 등록 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/write", method = RequestMethod.GET)
	public String boardWrite(Locale locale, Model model) throws Exception {
		return "admin/board/board_write";
	}
	@RequestMapping(value = "/admin/board/write", method = RequestMethod.POST)
	public String boardWrite(MultipartFile file, BoardVO boardVO, Locale locale, Model model, RedirectAttributes rdat) throws Exception {
		if(file.getOriginalFilename()=="") {
			boardService.insertBoard(boardVO);
		}else {
			String originalName = file.getOriginalFilename();//jsp에서 전송받은  파일 이름을 가져옴
			UUID uid = UUID.randomUUID();//랜덤문자 구하기
			String saveName = uid.toString()+"."+originalName.split("\\.")[1];//한글 파일명 처리 때문에
			String[] files = new String[] {saveName};
			boardVO.setFiles(files);
			boardService.insertBoard(boardVO);
			
			//이 위는 DB에 첨부파일명을 저장하기 까지
			//이 아래 부터 실제 파일을 폴더에 저장하기 시작
			byte[] fileData = file.getBytes();
			File target = new File(uploadPath, saveName);
			FileCopyUtils.copy(fileData, target);
		}
		
		rdat.addFlashAttribute("msg", "writeSuccess");
		return "redirect:/admin/board/list";
	}
	/**
	 * 게시물관리 수정 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/update", method = RequestMethod.GET)
	public String boardUpdate(@RequestParam("bno") Integer bno, Locale locale, Model model) throws Exception {
		BoardVO boardVO = boardService.viewBoard(bno);
		model.addAttribute("boardVO", boardVO);
		return "admin/board/board_update";
	}
	@RequestMapping(value = "/admin/board/update", method = RequestMethod.POST)
	public String boardUpdate(BoardVO boardVO, Locale locale, RedirectAttributes rdat) throws Exception {
		boardService.updateBoard(boardVO);
		rdat.addFlashAttribute("msg", "updateSuccess");
		return "redirect:/admin/board/view?bno=" + boardVO.getBno();
	}
	/**
	 * 게시물관리 삭제 입니다.
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/admin/board/delete", method = RequestMethod.POST)
	public String boardDelete(@RequestParam("bno") Integer bno, Locale locale, RedirectAttributes rdat) throws Exception {
		boardService.deleteBoard(bno);
		
		rdat.addFlashAttribute("msg", "deleteSuccess");
		return "redirect:/admin/board/list";
	}
}
