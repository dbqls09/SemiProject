
package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Member;
import service.face.MemberService;
import service.impl.MemberServiceImpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/main/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//서비스 객체 생성
	private MemberService memberService = new MemberServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/login.jsp").forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		//전달 파라미터에 대한 한글 인코딩 설정(UTF-8)
		req.setCharacterEncoding("UTF-8");
		
		//전달파라미터 로그인 정보 얻어오기
		Member member = memberService.getLoginMember(req);
		
		System.out.println(req.getParameter("user_id"));
		System.out.println(req.getParameter("user_pw"));
		
		System.out.println(req.getParameter("member"));

		//로그인 인증
		boolean isLogin = memberService.login(member);
		System.out.println("LoginController :: " + isLogin);

		//로그인 인증 성공
		if( isLogin ) {

			//로그인 사용자 정보 조회
			member = memberService.info(member);
			System.out.println("LoginController :: " + member);
			
			//세선 정보 객체
			HttpSession session = req.getSession();

			session.setAttribute("login", isLogin);
			session.setAttribute("user_id", member.getUser_id());
			session.setAttribute("user_pw", member.getUser_pw());
			session.setAttribute("user_name", member.getUser_name());
			session.setAttribute("user_birth", member.getUser_birth());
			session.setAttribute("user_email", member.getUser_email());
			session.setAttribute("user_phone", member.getUser_phone());
		}

		//로그인 성공 페이지로 리다이렉트
		resp.sendRedirect("/main");
//		req.getRequestDispatcher("/WEB-INF/views/member/main").forward(req, resp);

//		return;
		System.out.println(req.getParameter("user_id"));
		System.out.println(req.getParameter("user_pw"));
		
		System.out.println(req.getParameterValues("member"));


	}
	
}