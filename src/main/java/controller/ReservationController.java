package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Mdate;
import dto.Movie;
import dto.Theater;
import service.face.MdateService;
import service.face.MovieService;
import service.face.TheaterService;
import service.impl.MdateServiceImpl;
import service.impl.MovieServiceImpl;
import service.impl.TheaterServiceImpl;


@WebServlet("/reservation")
public class ReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Service 객체 생성
	private MovieService movieService = new MovieServiceImpl();
	private MdateService mdateService = new MdateServiceImpl();
	private TheaterService theaterService = new TheaterServiceImpl();
       
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//게시글 전체 조회
		List<Movie> movieList = movieService.getList();
		List<Mdate> mdateList = mdateService.getList();
		List<Theater> theaterList = theaterService.getList();
		
		//조회결과 MODEL값 전달
		req.setAttribute("movieList", movieList);
		req.setAttribute("mdateList", mdateList);
		req.setAttribute("theaterList", theaterList);
		
		req.getRequestDispatcher("/WEB-INF/views/reservation.jsp").forward(req, resp);
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
