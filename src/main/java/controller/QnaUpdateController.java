package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Qna;
import service.face.QnaService;
import service.impl.QnaServiceImpl;



@WebServlet("/qna/update")
public class QnaUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private QnaService qnaService = new QnaServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
//		System.out.println( "QnaUpdateController doGet() - 전달파라미터 qnano :" + req.getParameter("qna_no"));
		//전달 파라미터 저장 객체 얻기
		Qna qnano = qnaService.getQnano(req);
		System.out.println("QnaUpdateController doGet() - 전달파라미터 객체 :" + qnano);
		
		//상세보기 결과 조회
		Qna updateQna = qnaService.view(qnano);
		System.out.println("QnaUpdateController doGet() - 상세보기 객체 :" + updateQna);
		
		//조회결과 MODEL값 전달
		req.setAttribute("updateQna", updateQna);
		
		//VIEW 지정 및 응답 
		req.getRequestDispatcher("/LHH/qnaupdate.jsp").forward(req, resp);
		
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.setCharacterEncoding("UTF-8");
		qnaService.update(req);
		
		resp.sendRedirect("./list");
	
	
	}
	
	
	
	

}
