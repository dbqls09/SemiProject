package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Notice;

public interface NoticeDao {

	/**
	 * 테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Notice> - 테이블 전체 조회 결과 목록
	 */
	public List<Notice> selectAll(Connection conn);

	/**
	 * 조회된 게시글의 조회수 증가시키키
	 * 
	 * @param conn - DB연결객체
	 * @param noticeno - 조회할 게시글의 noticeno를 가진 DTO객체
	 * @return int - UPDATE쿼리 수행 결과
	 */
	public int updateHit(Connection conn, Notice noticeno);
	
	/**
	 * 지정된 noticeno의 게시글 조회하기
	 * 
	 * @param conn -DB연결 객체
	 * @param noticeno -조회할 게시글의 noticeno를 가진 DTO객체
	 * @return Notice - 조회된 게시글의 상제정보 DTO객체
	 */
	public Notice selectNoticeBynoticeno(Connection conn, Notice noticeno);


}
