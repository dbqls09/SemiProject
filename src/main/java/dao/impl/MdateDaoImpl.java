package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.MdateDao;
import dto.Mdate;
import util.Paging;
import web.dto.Board;

public class MdateDaoImpl implements MdateDao {

	private PreparedStatement ps; //SQL수행 객체
	private ResultSet rs; //SQL조회 결과 객체
	
	@Override
	public List<Mdate> selectAll(Connection conn) {
		
		//SQL작성
				String sql = "";
				sql += "SELECT * FROM board";
				sql += " ORDER BY boardno DESC";
				
				//결과 저장할 List
				List<Board> boardList = new ArrayList<>();
				
				try {
					ps = conn.prepareStatement(sql); //SQL수행 객체
					
					rs = ps.executeQuery(); //SQL수행 및 결과 집합 저장
					
					//조회 결과 처리
					while(rs.next()) {
						Board b = new Board(); //결과값 저장 객체
						
						//결과값 한 행씩 처리
						b.setBoardno(rs.getInt("boardno"));
						b.setTitle(rs.getString("title"));
						b.setUserid(rs.getString("userid"));
						b.setHit(rs.getInt("hit"));
						b.setWriteDate(rs.getDate("write_date"));
						
						//리스트에 결과값 저장
						boardList.add(b);
						
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					//DB객체 닫기
					JDBCTemplate.close(rs);
					JDBCTemplate.close(ps);
				}
				
				//최종 결과 반환
				return boardList;
			}

			