package org.edu.controller;

import java.util.List;

import javax.inject.Inject;

import org.edu.service.IF_ReplyService;
import org.edu.vo.ReplyVO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * REST API 서비스(댓글서비스)==REST FULL 서비스
 * @author 
 * 
 */
@RestController
@RequestMapping("/reply")
public class ReplyController {
	@Inject
	private IF_ReplyService replyService;
	
	/**
	 * 댓글 리스트 서비스
	 * @param bno
	 * @return
	 */
	@RequestMapping(value="/select/{bno}", method=RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> selectReply(@PathVariable("bno") Integer bno) {
		ResponseEntity<List<ReplyVO>> entity = null;
		try {
			entity = new ResponseEntity<>(replyService.selectReply(bno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	/**
	 * 댓글 입력 서비스
	 */
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public ResponseEntity<String> insertReply(@RequestBody ReplyVO replyVO){
		ResponseEntity<String> entity = null;
		try {
			replyService.insertReply(replyVO);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;//JSON데이터를 리턴(jsp페이지로)
	}
	
	/**
	 * 댓글 수정 서비스
	 */
	@RequestMapping(value="/update/{rno}", method={RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> updateReply(@PathVariable("rno") Integer rno, @RequestBody ReplyVO replyVO){
		ResponseEntity<String> entity = null;
		try {
			replyVO.setRno(rno);
			replyService.updateReply(replyVO);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;//JSON데이터를 리턴(jsp페이지로)
	}
	
	/**
	 * 댓글 삭제
	 */
	@RequestMapping(value="/delete/{rno}", method=RequestMethod.DELETE)
	public ResponseEntity<String> deleteReply(@PathVariable("rno") Integer rno){
		ResponseEntity<String> entity = null;
		try {
			replyService.deleteReply(rno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;//JSON데이터를 리턴(jsp페이지로)
	}
	
	
	
	
}