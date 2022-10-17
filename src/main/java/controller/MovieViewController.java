package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Movie;
import dto.Qna;
import service.face.MovieService;
import service.impl.MovieServiceImpl;



@WebServlet("/movie/view")
public class MovieViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MovieService movieService = new MovieServiceImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//전달 파라미터 저장 객체 얻기
		Movie movie = movieService.getMovieCode(req);
		System.out.println("movieController : " + movie);
		
		
		//무비코드 가져오기
		Movie movieCode = movieService.view(movie);
		
		//조회결과 MODEL값 전달
		req.setAttribute("movieCode", movieCode);
		
		req.getRequestDispatcher("/WEB-INF/views/member/movieinfo.jsp").forward(req, resp);
		
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		
		
		
		
		
		
		
	
	}
	
	
	
}
