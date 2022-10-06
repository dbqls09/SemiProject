package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dto.Member;
import web.service.face.MemberService;
import web.service.impl.MemberServiceImpl;

/**
 * Servlet implementation class MemberJoinController
 */
@WebServlet("/member/join")
public class MemberJoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/join.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//회원가입 전달 파라미터 추출하기
		Member member = memberService.getJoinMember(req);
		
		//회원가입 처리
        memberService.join(member);
        
        //메인으로 리다이렉트
        resp.sendRedirect("/main");
		
//		req.setCharacterEncoding("utf-8");
//		resp.setCharacterEncoding("utf-8");
//		
//		Member param = memberService.getParam(req);
//		
//		Member result = memberService.join(param);
//		req.setAttribute("result", result);
//		
//		resp.sendRedirect("/main");
		

		
	}
}
		
	


