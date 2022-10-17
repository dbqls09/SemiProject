package service.impl;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.MovieDao;
import dao.impl.MovieDaoImpl;
import dto.Movie;
import service.face.MovieService;

public class MovieServiceImpl implements MovieService {

	//DAO 객체
	private MovieDao movieDao = new MovieDaoImpl();
	
	@Override
	   public Movie getMovieCode(HttpServletRequest req) {
		
		//전달파라미터를 저장할 객체 생성
		Movie movie = new Movie();
		
		String param = req.getParameter("movie_code");
		
		if(param != null && !"".equals("param")) {
			movie.setMovie_code(Integer.parseInt(param));
		} else {
			System.out.println("[WARN] MovieService - getMovieCode - null이거나 비어있음");
		}
		
		return movie;
	}
	
	@Override
	public Movie view(Movie movieCode) {

		Connection conn = JDBCTemplate.getConnection();
		
		//영화정보 조회
		Movie movie = movieDao.selectMovieCode(conn, movieCode);
		
		//조회된 게시글 리턴
		return movie;
	
	}
	
	
   @Override
   public List<Movie> getList() {
		
	   //영화 정보 전체 조회 결과 처리
	   return movieDao.selectAll(JDBCTemplate.getConnection());
	}



	
	
}
