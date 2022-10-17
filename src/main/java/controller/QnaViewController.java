package controller;

import java.io.IOException;

import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Qna;
import service.face.QnaService;
import service.impl.QnaServiceImpl;


@WebServlet("/qna/view")
public class QnaViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private  QnaService qnaService = new QnaServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//전달 파라미터 저장 객체 얻기
		Qna qnano = qnaService.getQnano(req);
		
		//상세보기 결과 조회
		Qna viewQna = qnaService.view(qnano);
		
		//조회결과 MODEL값 전달
		req.setAttribute("viewQna", viewQna);
		
		
//		//첨부파일 조회
//		BoardFile boardFile = boardService.viewFile(viewBoard);
		
//		//첨부파일 정보를 MODEL값 전달
//		req.setAttribute("boardFile", boardFile);
		
		//VIEW 지정 및 응답 
		req.getRequestDispatcher("/WEB-INF/views/member/qnaview.jsp").forward(req, resp);
		
		
		
		
	
	}
	
	
	
	
	
	
	
	
	
	
}
