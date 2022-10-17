package controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Qna;
import service.face.QnaService;
import service.impl.QnaServiceImpl;
import util.Paging;


@WebServlet( "/qna/list")
public class QnaListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private QnaService qnaService = new QnaServiceImpl(); 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
				//전달파라미터에서 현재 페이징 객체 계산하기
				Paging paging = qnaService.getPaging(req);
				System.out.println( paging );
				
				//게시글 전체 조회
//				List<Qna> qnaList = qnaService.getList();
				
//				//게시글 페이징 목록 조회
				List<Qna> qnaList = qnaService.getList( paging );
//				
				//조회결과 MODEL값 전달
				req.setAttribute("qnaList", qnaList);
				
//				//페이징 객체 MODEL 값 전달
				req.setAttribute("paging", paging);
				
				//View 지정 및 응답
				req.getRequestDispatcher("/LHH/qnalist.jsp").forward(req, resp);
				
	
	
	
	}
	
	
	

}
