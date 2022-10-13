package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Theater;

public interface TheaterDao {

	public List<Theater> selectAll(Connection conn);
	
}
