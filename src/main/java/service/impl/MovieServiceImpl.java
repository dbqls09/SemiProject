package service.impl;

import java.util.List;

import common.JDBCTemplate;
import dao.face.MovieDao;
import dao.impl.MovieDaoImpl;
import dto.Movie;
import service.face.MovieService;

public class MovieServiceImpl implements MovieService {

	//DAO 객체
	private MovieDao movieDao = new MovieDaoImpl();
	
	@Override
	public List<Movie> getList() {
		
		//영화 정보 전체 조회 결과 처리
		return movieDao.selectAll(JDBCTemplate.getConnection());
	}

}
