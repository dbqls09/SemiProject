package service.impl;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.NoticeDao;
import dao.impl.NoticeDaoImpl;
import dto.Notice;
import dto.Qna;
import service.face.NoticeService;

public class NoticeServiceImpl implements NoticeService {
	
	private NoticeDao noticeDao = new NoticeDaoImpl();
	
	@Override
	public List<Notice> getList() {
		return noticeDao.selectAll(JDBCTemplate.getConnection());
		
		
	}  
	
	@Override
	public Notice getNoticeno(HttpServletRequest req) {
		//전달파라미터를 저장할 객체 생성
		Notice notice = new Notice();
		
		String param = req.getParameter("notice_no");
												
		if(param != null && !"".equals("param")) {
			notice.setNotice_no(Integer.parseInt(param));
		} else {
			System.out.println("[WARN] NoticeService getNoticceno() - noticeno값이 null이거나 비어있음");
		}
		
		
		return notice;
	}
	
	
	@Override
	public Notice view(Notice noticeno) {
	Connection conn = JDBCTemplate.getConnection();
		
	
	//조회수 증가
	if ( noticeDao.updateHit(conn, noticeno) > 0 ) {
		JDBCTemplate.commit(conn);
	} else {
		JDBCTemplate.rollback(conn);
	}
	
	
	//게시글 조회
	Notice notice = noticeDao.selectNoticeBynoticeno(conn, noticeno);
	
	//조회된 게시글 리턴
	return notice;
	}
	

}
