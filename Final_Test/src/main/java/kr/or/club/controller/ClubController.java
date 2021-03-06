package kr.or.club.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.or.club.model.service.ClubService;
import kr.or.club.model.vo.Board;
import kr.or.club.model.vo.Club;
import kr.or.member.model.vo.Member;

@Controller
public class ClubController {
	@Autowired
	private ClubService service;
	
	// 회원이 속한 모임에 클럽게시물 추출
	@RequestMapping(value = "/myClub.do")
	public String myClub(@SessionAttribute(required = false) Member m,Model model){
		ArrayList<Club> clubList = service.memberClubList(m);
//		ArrayList<Board> clubPosts = service.memberClubPosts(m);
		int totalCount = service.totalCount(m);
		
		model.addAttribute("clubList",clubList);
//		model.addAttribute("clubPosts",clubPosts);
		model.addAttribute("totalCount",totalCount);
		return "club/myClub";
	}
	
	// 회원이 속한 모임에 클럽게시물 상세출력
	@ResponseBody
	@RequestMapping(value = "/photoMore.do")
	public ArrayList<Board> photoMore(@SessionAttribute(required = false) Member m,Model model, int start) {
		
		ArrayList<Board> list = service.morePhoto(start,m);
		model.addAttribute("listMore",list);
		return list;
	}
	
	//임시 게시물 등록페이지
	@RequestMapping(value = "/insertPostWrite.do")
	public String insertPostWrite() {
		return "club/insertPostWrite";
	}
	
	
	//게시물 등록
	@RequestMapping(value="/insertPost.do")
   public String boardWrite(Board b, MultipartFile files[], HttpServletRequest request, Model model) {
      //파일 목록을 저장할 리스트 생성
      //같은 클래스명이라 밑에 처럼 길게 나옴
      ArrayList<Board> fileList = new ArrayList<Board>();
      
      System.out.println(b.getBoardContent());
      System.out.println(b.getBoardCg());
      System.out.println(b.getBoardTitle());
      System.out.println(b.getBoardWriter());
      
      //파일이 존재하지 않더라도 배열은 무조건 길이 1을 가짐
      if(files[0].isEmpty()) { //첫번째 타입이 비어있는지 확인
    	  //첨부파일이 없는 경우
    	  
      }else {
    	  //첨부파일이 있는경우
    	  //파일처리
          //getRealPath() -> webapp 폴더
          String savePath = request.getSession()
        		  					.getServletContext()
        		  					.getRealPath("/resources/fileupload/post/");
          
          //파일이 1~여러개라 for문으로 묶어준다
          for(MultipartFile file : files) {
        	  
        	//실제 유저가 올린 파일명(filename)
              String filename = file.getOriginalFilename();
              //유저가 올린 파일명을 마지막  . 기준으로 분리 test.txt -> test / .txt 로 나누고 겹치면 넘버링을 해주는 형식
              // indexof : .위치 추출 / substring : begin ~ end 까지 자르기
              //0부터 filename.indexOf(".") ""안에있는 것까지 onlyFilename에 집어넣어라
              String onlyFilename = filename.substring(0 , filename.indexOf(".")); 
              String extention = filename.substring(filename.indexOf("."));// .txt 
              String filepath = null;
              int count = 0;
              
              // 중복이름 필터
              while(true) {
                 if(count == 0) {
                    filepath = onlyFilename + extention; //test.txt
                 }else {
                    filepath = onlyFilename + "_" + count + extention; //test_카운트 숫자.txt
                 }
                 File checkFile = new File(savePath+filepath);
                 if(!checkFile.exists()) { //존재하지 않으면 
                    break;
                 }
                 count++;
              }
              Board f = new Board();
              f.setFileName(filename);
              f.setFilePath(filepath);
              fileList.add(f);
              
              System.out.println("filename : "  +filename);
              System.out.println("filepath : "  +filepath);
              
              try {
            	 //스트림 생성
                 FileOutputStream fos = new FileOutputStream(new File(savePath+filepath)); // 경로 + 파일명
                 //속도개선 보조 스트림
                 BufferedOutputStream bos = new BufferedOutputStream(fos);
                 //bos -> byte타입 벼환
                 byte[] bytes = file.getBytes(); //try/catch 추가 설정
                 bos.write(bytes);
                 bos.close();
                 
              } catch (FileNotFoundException e) {
                 // TODO Auto-generated catch block
                 e.printStackTrace();
              } catch (IOException e) {
                 // TODO Auto-generated catch block
                 e.printStackTrace();
              }
          }
       }
      //DB에 넣기
      int result = service.insertPost(b,fileList);
      if(result != -1 && result == fileList.size()) {
    	  model.addAttribute("msg","등록성공");
      }else {
    	  model.addAttribute("msg","등록실패");
      }
      model.addAttribute("loc","/myClub.jsp");
      
      
      return "common/msg";
   }
	
}
