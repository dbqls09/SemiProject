package service.face;

import java.util.List;

import dto.Notice;

public interface NoticeService {
	
	/**
	 * 공지 전체조회
	 * 
	 * @return List<Notice> - 공지 전체 조회 결과 목록
	 */
	List<Notice> getList();

}
