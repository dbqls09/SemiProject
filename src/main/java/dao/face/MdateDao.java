package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Mdate;

public interface MdateDao {

	public List<Mdate> selectAll(Connection conn);
}
