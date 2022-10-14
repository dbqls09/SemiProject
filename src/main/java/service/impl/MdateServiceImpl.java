package service.impl;

import java.util.List;

import common.JDBCTemplate;
import dao.face.MdateDao;
import dao.impl.MdateDaoImpl;
import dto.Mdate;
import service.face.MdateService;

public class MdateServiceImpl implements MdateService {

	//DAO 객체
	private MdateDao mdateDao = new MdateDaoImpl();
	
	@Override
	public List<Mdate> getList() {
	
		//날짜 전체 조회 결과 처리
		return mdateDao.selectAll(JDBCTemplate.getConnection());
	}

}
