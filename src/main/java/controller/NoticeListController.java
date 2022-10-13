package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Notice;
import dto.Qna;
import service.face.NoticeService;
import service.impl.NoticeServiceImpl;
import util.Paging;


@WebServlet("/notice/list")
public class NoticeListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private NoticeService noticeService = new NoticeServiceImpl(); 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
				//공지사항 전체 조회
				List<Notice> noticeList = noticeService.getList();
				
		
				//조회결과 MODEL값 전달
				req.setAttribute("noticeList", noticeList);
				
				
				//View 지정 및 응답
				req.getRequestDispatcher("/LHH/noticelist.jsp").forward(req, resp);
				
	
	}

}
