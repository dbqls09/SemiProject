package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Movie;

public interface MovieDao {

	public List<Movie> selectAll(Connection conn);
	

}
