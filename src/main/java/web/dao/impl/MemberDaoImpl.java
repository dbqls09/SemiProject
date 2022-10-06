package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import web.dao.face.MemberDao;
import web.dto.Member;

public class MemberDaoImpl implements MemberDao {
	
	private PreparedStatement ps;
	private ResultSet rs;
	
	@Override
	public int selectCntMemberByIdPw(Connection conn, Member member) {
		
		String sql = "";
		sql += "SELECT count(*) cnt FROM member";
		sql += " WHERE id = ?";
		sql += "	AND pw = ?";
		
		int cnt = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, member.getId());
			ps.setString(2, member.getPw());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				cnt = rs.getInt("cnt");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}	
		
		return cnt;
	}
	
	@Override
	public Member selectMemberById(Connection conn, Member member) {

		String sql = "";
		sql += "SELECT id, pw FROM member";
		sql += " WHERE userid = ?";
		
		Member result = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, member.getId());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				result = new Member();
				
				result.setName( rs.getString("Name") );
				result.setId( rs.getString("Id") );
				result.setPw( rs.getString("Pw") );
				result.setEmail( rs.getString("Email") );
				result.setPhone( rs.getString("Phone") );
				result.setGrade( rs.getString("Grade") );
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
	public int selectNextUserno(Connection conn) {
		String sql = "SELECT member_seq.nextval FROM dual";
		int next = 0;
			
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			next = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return next;
	}

	@Override
	public int insert(Connection conn, Member param) {
		String sql = "";
		sql += "INSERT INTO member ( username, userid, userpw, email, phone, admin )";
		sql += " VALUES ( ?, ?, ?, ?, ?, ? )";
		
		//INSERT 수행 결과 변수
		int result = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, param.getName());
			ps.setString(2, param.getId());
			ps.setString(3, param.getPw());
			ps.setString(4, param.getEmail());
			ps.setString(5, param.getPhone());
			ps.setString(6, param.getGrade());
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return result;
	}


		
		
	}


