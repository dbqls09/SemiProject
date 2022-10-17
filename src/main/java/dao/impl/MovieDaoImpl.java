package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import dao.face.MovieDao;
import dto.Movie;

public class MovieDaoImpl implements MovieDao {
	
	private PreparedStatement ps;
	private ResultSet rs;
	
	
	@Override
	public Movie movieinfo(Connection conn, Movie movie) {
		
		String sql ="";
		sql += "SELECT * FROM MOVIE";
		sql += " WHERE movie_code =?";
		
		Movie result = null;
		
		try {
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, movie.getMovie_code());			
			rs=ps.executeQuery();
			
			while(rs.next()) {
				result = new Movie();
				
				result.setMovie_title(rs.getString("movie_title"));
				result.setMovie_code(rs.getString("movie_code"));
				result.setMovie_age(rs.getString("movie_age"));
				result.setMovie_date(rs.getString("movie_date"));
				result.setMovie_director(rs.getString("movie_director"));
				result.setMovie_genre(rs.getString("movie_genre"));
				result.setMoive_actor(rs.getString("moive_actor"));
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
