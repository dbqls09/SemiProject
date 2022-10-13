package service.face;

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

}
