package service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dto.Notice;
import service.face.NoticeDao;

public class NoticeDaoImpl implements NoticeDao {

	private PreparedStatement ps;
	private ResultSet rs;
	
	@Override
	public List<Notice> selectAll(Connection conn) {
		System.out.println("selectAll(conn)");
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
	
	
	
	
	
	
	
}
