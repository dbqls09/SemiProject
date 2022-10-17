package service.impl;

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
	   public Movie getMovie(HttpServletRequest req) {
	      
	      Movie movie = new Movie();
	      
	      movie.setMovie_code(req.getParameter("movie_code"));
	      movie.setMovie_title(req.getParameter("movie_title"));
	      movie.setMovie_age(req.getParameter("movie_age"));
	      movie.setMoive_actor("moive_actor");
	      movie.setMovie_date("movie_date");
	      movie.setMovie_director("movie_director");
	      movie.setMovie_genre("movie_genre");
	      
	   
	      return movie;
	   }
	   
	   
	   @Override
	   public Movie movieinfo(Movie movie) {
	      return movieDao.movieinfo(JDBCTemplate.getConnection(), movie);
	   }
	
	   @Override
	   public List<Movie> getList() {
		
		  //영화 정보 전체 조회 결과 처리
		  return movieDao.selectAll(JDBCTemplate.getConnection());
	}

	
	
}
