package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.QnaDao;
import dto.Qna;
import dto.QnaFile;
import util.Paging;

public class QnaDaoImpl implements QnaDao {
	
	private PreparedStatement ps;
	private ResultSet rs;
	
	
	@Override
	public List<Qna> selectAll(Connection conn) {
		
		//SQL 작성
		String sql = "";
		sql += "SELECT * FROM qna";
		sql += "	ORDER BY qna_no DESC"; //게시글은 최근작성글이 가장처음으로 올라오도록
		
		//결과 저장할 List 
		List<Qna> qnalist = new ArrayList<>();
		
		
		try {
			ps = conn.prepareStatement(sql); //SQL 수행 객체
			
			rs = ps.executeQuery(); //SQL 수행 및 결과 집합 저장
			
			
			//조회 결과 처리
			while(rs.next()) {
				Qna q = new Qna(); //게시글(결과값) 저장할 객체 
				
				//결과값 한 행씩 처리
				q.setQna_no(rs.getInt("qna_no"));
				q.setQna_title(rs.getString("qna_title"));
				q.setQna_userid(rs.getString("qna_userid"));
				q.setQna_date(rs.getDate("qna_date")); 
				
				//리스트에 결과값 저장
				qnalist.add(q);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			 JDBCTemplate.close(ps);
			 JDBCTemplate.close(rs);
		}
		
		//최종 결과 반환
		return qnalist;
	}
	
	@Override
	public int selectCntAll(Connection conn) {
				//SQL 작성
				String sql ="";
				sql += "SELECT count(*) cnt FROM qna";
				
				//총 게시글 수
				int count = 0;
				
				
				try {
					ps = conn.prepareStatement(sql);
					rs = ps.executeQuery();
							
					while(rs.next()) {
						count = rs.getInt("cnt");
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					JDBCTemplate.close(ps);
					JDBCTemplate.close(rs);
				}
				
				return count;
	}
	
	
	@Override
	public List<Qna> selectAll(Connection conn, Paging paging) {
		
		//SQL 작성
		String sql = "";
		sql += "SELECT * FROM (";
		sql += "	SELECT rownum rnum, q.* FROM (";
		sql += "		SELECT  ";
		sql += "			qna_no, qna_title, qna_userid, qna_date";
		sql += "		FROM qna";
		sql += "		ORDER BY qna_no DESC"; 
		sql += "	)q";
		sql += " )qna";
		sql += " WHERE rnum BETWEEN ? AND ?";
		



		//결과 저장할 List 
		List<Qna> qnalist = new ArrayList<>();
		
		
		try {
			ps = conn.prepareStatement(sql);// SQL수행 객체
			
			ps.setInt(1, paging.getStartNo());
			ps.setInt(2, paging.getEndNo());
			
			
			rs = ps.executeQuery(); //SQL 수행 및 결과 집합 저장
			
			
			//조회 결과 처리
			while(rs.next()) {
					Qna q = new Qna(); //게시글(결과값) 저장할 객체 
				
				//결과값 한 행씩 처리
				q.setQna_no(rs.getInt("qna_no"));
				q.setQna_title(rs.getString("qna_title"));
				q.setQna_userid(rs.getString("qna_userid"));
				q.setQna_date(rs.getDate("qna_date")); 
				
				//리스트에 결과값 저장
				qnalist.add(q);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			 JDBCTemplate.close(ps);
			 JDBCTemplate.close(rs);
		}
		
		//최종 결과 반환
		return qnalist;
	}
	

	@Override
	public Qna selectQnaByQnano(Connection conn, Qna qnano) {
		String sql ="";
		sql += "SELECT";
		sql += "	qna_no, qna_title ";
		sql += "	,qna_content, qna_userid, qna_date";
		sql += " FROM qna";
		sql += " WHERE qna_no = ?";
		
		//결과값 저장할 객체
		Qna qna = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, qnano.getQna_no());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				qna = new Qna();
				
				qna.setQna_no(rs.getInt("qna_no"));
				qna.setQna_title(rs.getString("qna_title"));
				qna.setQna_content(rs.getString("qna_content"));
				qna.setQna_userid(rs.getString("qna_userid"));
				qna.setQna_date(rs.getDate("qna_date"));
				
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
			JDBCTemplate.close(rs);
		}
		
		return qna;
	}
		
	@Override
	public int insert(Connection conn, Qna qna) {
		System.out.println("insert(conn, qna)");
		String sql ="";
		sql += "INSERT INTO qna( qna_no, qna_title, qna_content )";
		sql += "	VALUES ( qna_seq.nextval, ?, ?)";

		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, qna.getQna_no());
			ps.setString(2, qna.getQna_title());
			ps.setString(3, qna.getQna_content());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}
	
	
	
	
	
}
