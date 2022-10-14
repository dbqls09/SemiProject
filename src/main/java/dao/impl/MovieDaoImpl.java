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
				m.setMovieTitle(rs.getString("movie_title"));
				m.setMovieAge(rs.getInt("movie_age"));
				
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
	
}
