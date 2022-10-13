package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.face.QnaService;
import service.impl.QnaServiceImpl;


@WebServlet("/qna/write")
public class QnaWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private QnaService qnaService = new QnaServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	req.getRequestDispatcher("/LHH/qnawrite.jsp").forward(req, resp);
	
	
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.setCharacterEncoding("UTF-8");
		
		qnaService.write(req);
		System.out.println("req"+req);
		
		resp.sendRedirect("./list");
		
	
	}
	
	
	
}
