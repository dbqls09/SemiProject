package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.spi.DirStateFactory.Result;

import common.JDBCTemplate;
import dto.Member;

public class MemberDaoImpl implements MemberDao {

	private PreparedStatement ps;
	private Result rs;
	
	@Override
	public int insert(Connection conn, Member member) {
	
		String sql ="";
		sql += "INSERT INTO MEMBER";
		sql += " VALUES(?,?,?,?,?,?)";
		
	
	
		int res =0;
		
		try {
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, member.getUser_id());
			ps.setString(2, member.getUser_pw());
			ps.setString(3, member.getUser_name());
			ps.setString(4, member.getUser_birth());
			ps.setString(5, member.getUser_email());
			ps.setString(6, member.getUser_phone());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		
		return res;
	}
}
