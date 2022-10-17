package service.face;

import javax.servlet.http.HttpServletRequest;

import dto.Movie;

public interface MovieService {

	public Movie getMovie(HttpServletRequest req);

	public Movie movieinfo(Movie movie);

	
}

