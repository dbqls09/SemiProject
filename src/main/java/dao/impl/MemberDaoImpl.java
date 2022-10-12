package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import dao.face.MemberDao;
import dto.Member;

public class MemberDaoImpl implements MemberDao {

	private PreparedStatement ps;
	private ResultSet rs;

	@Override
	public int selectCntMemberByUser_IdUser_pw(Connection conn, Member member) {

		String sql = "";
		sql += "SELECT count(*) cnt FROM member";
		sql += " WHERE user_id = ?";
		sql += "    AND user_pw = ?";

		int cnt = 0;

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, member.getUser_id());
			ps.setString(2, member.getUser_pw());

			rs = ps.executeQuery();

			while(rs.next() ) {
				cnt = rs.getInt("cnt");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		return cnt;

	}


	@Override
	public Member selectMemberByUser_idUser_pw(Connection conn, Member member) {

		String sql = "";
		sql += "SELECT user_id, user_pw FROM member";
		sql += " WHERE user_id = ?";

		Member result = null;

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, member.getUser_id());

			rs = ps.executeQuery();

			while(rs.next()) {
				result = new Member();

				result.setUser_id( rs.getString("User_id"));
				result.setUser_pw( rs.getString("User_pw"));
				result.setUser_name( rs.getString("User_name"));
				result.setUser_birth( rs.getString("User_birth"));
				result.setUser_email( rs.getString("User_email"));
				result.setUser_phone( rs.getString("User_phone"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		return result;


	}

	@Override
	public int insert(Connection conn, Member param) {

		String sql = "";
		sql += "INSERT INTO member";
		sql += " VALUES ( ?, ?, ?, ?, ?, ?) ";

		//INSERT 수행 결과 변수
		int result = 0;

		try {
			ps = conn.prepareStatement(sql);

			ps.setString(1, param.getUser_id());
			ps.setString(2, param.getUser_pw());
			ps.setString(3, param.getUser_name());
			ps.setString(4, param.getUser_birth());
			ps.setString(5, param.getUser_email());
			ps.setString(6, param.getUser_phone());
			result = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}

		return result;

	}
	
	@Override
	public Member selectMemberByUser_id(Connection conn, Member member) {
		
		
		return null;
	}


}