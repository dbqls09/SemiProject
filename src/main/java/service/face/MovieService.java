package service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Movie;

public interface MovieService {

	/**
	 * 영화 정보 전체 조회
	 * 
	 * @return List<Movie> - 영화 정보 전체 조회 결과 목록
	 */
	public List<Movie> getList();
	
	public Movie getMovie(HttpServletRequest req);
	
	public Movie movieinfo(Movie movie);
	
}
