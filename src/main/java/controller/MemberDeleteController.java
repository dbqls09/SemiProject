package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Member;
import service.face.MemberService;
import service.impl.MemberServiceImpl;

/**
 * Servlet implementation class MemberDeleteController
 */
@WebServlet("/member/delete")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	  private MemberService memberService = new MemberServiceImpl();
	  
	  @Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  req.getRequestDispatcher("/WEB-INF/views/member/memberupdate.jsp").forward(req, resp);
		  
//		  Member member = memberService.getUser_id(req);
		  
	  }
	  
	  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		  //삭제 처리
		  memberService.delete(req);
		  
		  //세션 파기
		  req.getSession().invalidate();
		  
		  //탈퇴 후 메인페이지로 리다이렉트
		  resp.sendRedirect("/WEB-INF/views/member/delete.jsp");
		  
		}
	  
	  
	        
		}
		
