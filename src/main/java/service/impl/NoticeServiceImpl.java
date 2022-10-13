package service.impl;

import java.util.List;


import common.JDBCTemplate;
import dto.Notice;
import service.face.NoticeDao;
import service.face.NoticeService;

public class NoticeServiceImpl implements NoticeService {
	
	private NoticeDao noticeDao = new NoticeDaoImpl();
	
	@Override
	public List<Notice> getList() {
		
		return noticeDao.selectAll(JDBCTemplate.getConnection());
	}

}
