package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.TheaterDao;
import dto.Theater;

public class TheaterDaoImpl implements TheaterDao {

	private PreparedStatement ps; //SQL수행 객체
	private ResultSet rs; //SQL조회 결과 객체
	
	@Override
	public List<Theater> selectAll(Connection conn) {
		
		//SQL작성
		String sql = "";
		sql += "SELECT * FROM theater";
		sql += " ORDER BY theater_no DESC";
		
		//결과 저장할 List
		List<Theater> theaterList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			
			rs = ps.executeQuery(); //SQL수행 및 결과 집합 저장
			
			//조회 결과 처리
			while(rs.next()) {
				Theater t = new Theater(); //결과값 저장 객체
				
				//결과값 한 행씩 처리
				t.setTheaterName(rs.getString("theater_name"));
				
				//리스트에 결과값 저장
				theaterList.add(t);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		//최종 결과 반환
		return theaterList;
	}
	
}
