package service.impl;



import java.sql.Connection;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.QnaDao;
import dao.impl.QnaDaoImpl;
import dto.Qna;
import dto.QnaFile;
import service.face.QnaService;
import util.Paging;

public class QnaServiceImpl implements QnaService {

	//DAO 객체
	private QnaDao qnaDao = new QnaDaoImpl();
	
	@Override
	public List<Qna> getList() {
		return  qnaDao.selectAll(JDBCTemplate.getConnection()); //전체조회결과
	}
	
	
	@Override
	public List<Qna> getList(Paging paging) {
		System.out.println("getList(paging)");
		
		return  qnaDao.selectAll(JDBCTemplate.getConnection(), paging); //게시글 전체조회결과
		
		
	}
	
	@Override
	public Paging getPaging(HttpServletRequest req) {

		//전달파라미터 curPage 추출하기
		String param = req.getParameter("curPage");
		int curPage = 0; 
		if( param != null && !"".equals(param) ) {
			curPage = Integer.parseInt(param); //int로 형변환
		} else {
			System.out.println("[WARN] QnaService getPaging() - curPage가 null이거나 비어있음");
		}
		
		//총 게시글 수 조회하기  - DB에서 알아낼수있음
		int totalCount = qnaDao.selectCntAll(JDBCTemplate.getConnection());
		
		//Paging 객체 생성
		Paging paging = new Paging(totalCount, curPage , 5);
		
		
		return paging;
	}
	
	

	@Override
	public Qna getQnano(HttpServletRequest req) {
		
		//전달파라미터를 저장할 객체 생성
		Qna qna = new Qna();
		
		String param = req.getParameter("qna_no"); //전달받은 boardno String으로 
													//->전달파라미터의 타입은 String
		
		if(param != null && !"".equals("param")) {
			qna.setQna_no(Integer.parseInt(param));
		} else {
			System.out.println("[WARN] QnaService getQnono() - qnano값이 null이거나 비어있음");
		}
		
		
		return qna;
	}

	
	@Override
	public Qna view(Qna qnano) {
//		System.out.println("ServiceImpl() - Qna view");
		Connection conn = JDBCTemplate.getConnection();
		

		
		//게시글 조회
		Qna qna = qnaDao.selectQnaByQnano(conn, qnano);
		
		//조회된 게시글 리턴
		return qna;
	}
	
	@Override
	public void write(HttpServletRequest req) {
		
		Qna qna = new Qna();
		//제목처리
		qna.setQna_title(req.getParameter("qna_title")); //parameter는 form안에있는 input name
		
		//본문 처리
		qna.setQna_content(req.getParameter("qna_content"));//parameter는 form안에있는 textarea name
	
		//작성자 ID처리
//		qna.setQna_userid( (String) req.getSession().getAttribute("qna_userid"));
		
		Connection conn = JDBCTemplate.getConnection();
		
		if( qnaDao.insert(conn, qna) > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		
		
	}
	
	
	
	@Override
	public void update(HttpServletRequest req) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Qna qna = new Qna();
		
		
		//수정할 글 번호
		qna.setQna_no(Integer.parseInt(req.getParameter("qna_no"))); //parameter는 form안에있는 input name
		
		//제목처리
		qna.setQna_title(req.getParameter("qna_title")); //parameter는 form안에있는 input name
		
		//본문 처리
		qna.setQna_content(req.getParameter("qna_content"));//parameter는 form안에있는 textarea name
	
		
		if(qnaDao.update(conn, qna) > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		
	}
	
	
	@Override
	public void delete(Qna qna) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 삭제
		if(qnaDao.delete(conn,qna) > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		
		
	}
		
	
	
	
}
