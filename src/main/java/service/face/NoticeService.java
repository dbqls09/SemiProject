package service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Notice;

public interface NoticeService {
	
	/**
	 * 공지 전체조회
	 * 
	 * @return List<Notice> - 공지 전체 조회 결과 목록
	 */
	public List<Notice> getList();

	
	/**
	 * 전달파라미터를 Notice DTO 로 저장하여 반환
	 * 
	 * 
	 * @param req - 요청 정보 객체
	 * @return Notice- 전달파라미터 no를 notice저장한 객체
	 */
	public Notice getNoticeno(HttpServletRequest req);

	/**
	 *전달된 noticeno를 이용하여 게시글을 조회한다
	 *조회된 게시글의 조회수를 1 증가시킨다
	 * 
	 * @param notice - 조회할 noticeno를 가진 DTO객체
	 * @return Notice -  조회된 게시글 정보
	 */
	public Notice view(Notice noticeno);

}
