package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.NoticeDao;
import dto.Notice;
import dto.Qna;

public class NoticeDaoImpl implements NoticeDao {

	private PreparedStatement ps;
	private ResultSet rs;
	
	@Override
	public List<Notice> selectAll(Connection conn) {
		System.out.println(" List<Notice> selectAll()");
				//SQL 작성
				String sql = "";
				sql += "SELECT * FROM notice";
				sql += "	ORDER BY notice_no DESC"; 
				
				//결과 저장할 List 
				List<Notice> noticelist = new ArrayList<>();
				
				
				try {
					ps = conn.prepareStatement(sql); //SQL 수행 객체
					
					rs = ps.executeQuery(); //SQL 수행 및 결과 집합 저장
					
					
					//조회 결과 처리
					while(rs.next()) {
						Notice n = new Notice(); //게시글(결과값) 저장할 객체 
						
						//결과값 한 행씩 처리
						n.setNotice_no(rs.getInt("notice_no"));
						n.setNotice_title(rs.getString("notice_title"));
						n.setNotice_content(rs.getString("notice_content"));
						n.setNotice_writedate(rs.getDate("notice_writedate")); 
						n.setHit(rs.getInt("hit"));
						
						//리스트에 결과값 저장
						noticelist.add(n);
						
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					//DB객체 닫기
					 JDBCTemplate.close(ps);
					 JDBCTemplate.close(rs);
				}
				
				//최종 결과 반환
				return noticelist;
	}
	
	@Override
	public int updateHit(Connection conn, Notice noticeno) {
		
		String sql ="";
		sql += "UPDATE notice";
		sql += " SET hit = hit +1";
		sql += " WHERE notice_no = ?";

		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, noticeno.getNotice_no());
			
			res = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		
		return res;
	}
	
	@Override
	public Notice selectNoticeBynoticeno(Connection conn, Notice noticeno) {
		String sql ="";
		sql += "SELECT";
		sql += "	notice_no, notice_title ";
		sql += "	,notice_content, notice_writedate, hit";
		sql += " FROM  notice";
		sql += " WHERE notice_no = ?";
		
		//결과값 저장할 객체
		Notice notice = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, noticeno.getNotice_no());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				notice = new Notice();
				
				notice.setNotice_no(rs.getInt("notice_no"));
				notice.setNotice_title(rs.getString("notice_title"));
				notice.setNotice_content(rs.getString("notice_content"));
				notice.setNotice_writedate(rs.getDate("notice_writedate"));
				
				
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
			JDBCTemplate.close(rs);
		}
		
		return notice;
	}
	
	
	
	
	
}
