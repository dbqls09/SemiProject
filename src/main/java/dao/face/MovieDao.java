package dao.face;

import java.sql.Connection;

import dto.Movie;

public interface MovieDao {

	Movie movieinfo(Connection connection, Movie movie);

	
}
