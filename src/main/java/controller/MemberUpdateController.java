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

@WebServlet("/member/update")
public class MemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/WEB-INF/views/member/memberupdate.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		
//		Member member = memberService.getUpdateMember(req);
		
//		//수정 처리
//		memberService.update(req);
		
//		//세션 값 무효화
//		req.getSession().invalidate();
		
		//수정 처리
		memberService.update(req);
		
		
		// 수정 후 로그아웃 하고 로그인 페이지로
		resp.sendRedirect("/main/login");
		
		
	}
	
}
