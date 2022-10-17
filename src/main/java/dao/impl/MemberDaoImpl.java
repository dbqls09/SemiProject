package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

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
	public Member selectMemberByUser_id(Connection conn, Member member) {

		String sql = "";
		sql += "SELECT * FROM member";
		sql += " WHERE user_id = ?";

		Member result = null;

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, member.getUser_id());

			rs = ps.executeQuery();

			while(rs.next()) {
				result = new Member();

				result.setUser_id(rs.getString("user_id"));
				result.setUser_pw(rs.getString("user_pw"));
				result.setUser_name(rs.getString("user_name"));
				result.setUser_birth(rs.getString("user_birth"));
				result.setUser_email(rs.getString("user_email"));
				result.setUser_phone(rs.getString("user_phone"));


			}

		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			JDBCTemplate.close(ps);
			JDBCTemplate.close(ps);
		}

		return result;

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
				result.setUser_id( rs.getString("user_id"));
				result.setUser_pw( rs.getString("user_pw"));
				result.setUser_name( rs.getString("user_name"));
				result.setUser_birth( rs.getString("user_birth"));
				result.setUser_email( rs.getString("user_email"));
				result.setUser_phone( rs.getString("user_phone"));
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
		sql += "INSERT INTO member(user_id, user_pw, user_name, user_birth, user_email, user_phone)";
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
	public int joinIdCheck(String user_id) {	

		String sql="";
		sql += "SELECT * FROM MEMBER WHERE user_id = ?";
		
		
		int result = -1;
		
		try {
			
			Connection conn = JDBCTemplate.getConnection();
			
			
			ps=conn.prepareStatement(sql);
			ps.setString(1, user_id);
			
			rs=ps.executeQuery();
			
			if(rs.next()) {
				result =0;
			}else {
				result = 1;
			}
			
			System.out.println("아이디 중복 체크 결과 : " + result);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		
		}
			
		return result;
	}
//	
//	@Override
//	public User selectUser(String user_id) throws SQLException {
//		
//		try {
////			conn = DButil.getCon();
//			String SQL="";
//			sql += "SELECT * FROM MEMBER";
//			sql += " WHERE user_id = ? ";
//			
//			ps=conn.prepareStatement(sql);
//			ps.setString(1, user_id);
//			
//			rs=ps.executeQuery();
//			
//			List<Member> arr = makeList(rs);
//			if(arr!= null && arr.size() == 1) {
//				Member member = arr.get(0);
//				return member;
//			}
//			return null;
//			
//			
//		} finally {
//			close();
//			
//		}

		
//	}
	
	@Override
	public int update(Connection conn, Member member) {

		String sql = "";
	      sql += "UPDATE member SET";
	      sql += " user_pw = ? , user_name = ?, user_birth = ?, user_email = ?, user_phone = ?";
	      sql += " WHERE user_id = ?";
	      
	      int result = 0;
	      
	      try {
	         ps = conn.prepareStatement(sql);
	         
	         ps.setString(1, member.getUser_pw());
	         ps.setString(2, member.getUser_name());
	         ps.setString(3, member.getUser_birth());
	         ps.setString(4, member.getUser_email());
	         ps.setString(5, member.getUser_phone());
	         ps.setString(6, member.getUser_id());
	         
	         result = ps.executeUpdate();
	         
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(ps);
	      }
	      
	      return result;
	                  
	      
	}
	

	@Override
	public int delete(Connection conn, Member member) {
		 String sql ="";
	      sql += "DELETE FROM member";
	      sql += " WHERE user_id = ?";
	      
	      int res = 0;
	      
	      try {
	         ps = conn.prepareStatement(sql);
	         
	         ps.setString(1, member.getUser_id()); //아이디
	         
	         res = ps.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JDBCTemplate.close(ps);
	      }
	      
	      return res;
	   }
	   
		
	@Override
	public Member movieinfo(Connection conn, Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member movieSelect(Connection conn, Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member getMovie(HttpServletRequest req) {
		// TODO Auto-generated method stub
		return null;
	}
	
	



}