package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.MovieDao;
import dto.Movie;

public class MovieDaoImpl implements MovieDao {

	private PreparedStatement ps; //SQL수행 객체
	private ResultSet rs; //SQL조회 결과 객체
	
	@Override
	public List<Movie> selectAll(Connection conn) {
		
		//SQL작성
		String sql = "";
		sql += "SELECT * FROM movie";
		sql += " ORDER BY movie_title";
		
		//결과 저장할 List
		List<Movie> movieList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			
			rs = ps.executeQuery(); //결과값 저장 객체
			
			//조회 결과 처리
			while(rs.next()) {
				Movie m = new Movie(); //결과값 저장 객체
				
				//결과값 한 행씩 처리
				m.setMovie_title(rs.getString("movie_title"));
				m.setMovie_age(rs.getInt("movie_age"));
				
				//리스트에 결과값 저장
				movieList.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		//최종 결과 반환
		return movieList;
	}

	@Override
	public Movie selectMovieCode(Connection conn, Movie movie) {
		
		String sql ="";
	      sql += "SELECT * FROM MOVIE";
	      sql += " WHERE movie_code =?";
	      
	      Movie result = null;
	      
	      try {
	         ps=conn.prepareStatement(sql);
	         
	         ps.setInt(1, movie.getMovie_code());         
	         rs=ps.executeQuery();
	         
	         while(rs.next()) {
	            result = new Movie();
	            
	            result.setMovie_title(rs.getString("movie_title"));
	            result.setMovie_code(rs.getInt("movie_code"));
	            result.setMovie_age(rs.getInt("movie_age"));
	            result.setMovie_date(rs.getString("movie_date"));
	            result.setMovie_director(rs.getString("movie_director"));
	            result.setMovie_genre(rs.getString("movie_genre"));
	            result.setMovie_actor(rs.getString("movie_actor"));
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(rs);
	         JDBCTemplate.close(ps);
	      }
	      
	      
	      return result;
	   }

	
}
