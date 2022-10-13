package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.face.MemberService;
import service.impl.MemberServiceImpl;

/**
 * Servlet implementation class LogoutController
 */
@WebServlet("/main/logout")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.getRequestDispatcher("/WEB-INF/views/member/logout.jsp").forward(req, resp);
		req.getSession().invalidate();
	}
	
	

}
