package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.dto.Member;
import web.service.face.MemberService;
import web.service.impl.MemberServiceImpl;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/main")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체 생성
	private MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/main.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		//전달 파라미터에 대한 한글 인코딩 설정(UTF-8)
		req.setCharacterEncoding("UTF-8");
		
//		//전달 파라미터 얻기
//		String id = req.getParameter("id");
//		String pw = req.getParameter("pw");
		
		//전달파라미터 로그인 정보 얻어오기
		Member member = memberService.getLoginMember(req);
		
		//로그인 인증
		boolean isLogin = memberService.login(member);
		
		//로그인 인증 성공
		if( isLogin ) {
			
			//로그인 사용자 정보 조회
			member = memberService.info(member);
			
			//세선 정보 객체
			HttpSession session = req.getSession();
			
			session.setAttribute("login", isLogin);
			session.setAttribute("name", member.getName());
			session.setAttribute("id", member.getId());
			session.setAttribute("pw", member.getPw());
			session.setAttribute("email", member.getEmail());
			session.setAttribute("phone", member.getPhone());
			session.setAttribute("grade", member.getGrade());
			
		}
		
		//로그인 페이지로 리다이렉트
		resp.sendRedirect("/main");
		
		return;
		
		
		
	}

}
