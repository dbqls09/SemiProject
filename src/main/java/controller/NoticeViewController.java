package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Notice;
import dto.Qna;
import service.face.NoticeService;
import service.face.QnaService;
import service.impl.NoticeServiceImpl;
import service.impl.QnaServiceImpl;


@WebServlet("/notice/view")
public class NoticeViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private  NoticeService noticeService = new NoticeServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//전달 파라미터 저장 객체 얻기
		Notice noticeno = noticeService.getNoticeno(req);
		
		//상세보기 결과 조회
		Notice viewNotice = noticeService.view(noticeno);
		
		//조회결과 MODEL값 전달
		req.setAttribute("viewNotice", viewNotice);
		
		
		
		
		//VIEW 지정 및 응답 
		req.getRequestDispatcher("/WEB-INF/views/member/noticeview.jsp").forward(req, resp);
	}

}
