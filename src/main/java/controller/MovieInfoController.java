package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Movie;
import service.face.MovieService;
import service.impl.MovieServiceImpl;

@WebServlet("/main/movie")
public class MovieInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MovieService movieService = new MovieServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/movieinfo.jsp").forward(req, resp);
		
		Movie movie = movieService.getMovie(req);
		
		movie = movieService.movieinfo(movie);
		
		HttpSession session = req.getSession();
		
		session.setAttribute("movie_title", movie.getMovie_title());
		session.setAttribute("movie_code", movie.getMovie_code());	
		session.setAttribute("movie_age", movie.getMovie_age());
		session.setAttribute("movie_date",movie.getMovie_date());
		session.setAttribute("movie_director",movie.getMovie_director());
		session.setAttribute("movie_genre",movie.getMovie_genre());
		session.setAttribute("moive_actor", movie.getMoive_actor());

	}
	
}