package service.impl;

import java.util.List;

import common.JDBCTemplate;
import dao.face.TheaterDao;
import dao.impl.TheaterDaoImpl;
import dto.Theater;
import service.face.TheaterService;

public class TheaterServiceImpl implements TheaterService {

	//DAO 객체
	private TheaterDao theaterDao = new TheaterDaoImpl();
	
	@Override
	public List<Theater> getList() {
		
		//극장 전체 조회 결과 처리
		return theaterDao.selectAll(JDBCTemplate.getConnection());
	}

}
