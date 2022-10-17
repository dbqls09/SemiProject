package service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Qna;
import util.Paging;



public interface QnaService {

	/**
	 *  qna게시글 전체 조회
	 * 
	 * 
	 * @return - List<Qna> - 게시글 전체 조회 결과 목록
	 */
	public List<Qna> getList();

	/**
	 *  qna게시글 전체 조회
	 * 
	 * @param paging - 페이징 정보 객체
	 * @return - List<Qna> - qna게시글 전체 조회 결과 목록
	 */
	public List<Qna> getList(Paging paging);
	
	/**
	 * 게시글 페이징 객체 생성
	 * 
	 * @param req - 요청 정보 객체
	 * @return Paging - 페이징 계산이 완료된 객체
	 */
	public Paging getPaging(HttpServletRequest req);

	
	/**
	 * 전달파라미터를 Qna DTO 로 저장하여 반환
	 * 
	 * 
	 * @param req - 요청 정보 객체
	 * @return Qna- 전달파라미터 qnano를 저장한 객체
	 */
	public Qna getQnano(HttpServletRequest req);

	/**
	 *전달된 boardno를 이용하여 게시글을 조회한다
	 *조회된 게시글의 조회수를 1 증가시킨다
	 * 
	 * @param qna - 조회할 Qna qnano를 가진 DTO객체
	 * @return Qna -  조회된 게시글 정보
	 */
	public Qna view(Qna qnano);

	/**
	 * qna 작성
	 * 입력한 게시글을 DB에 저장한다
	 * 
	 * @param req - 요청 정보 객체 
	 */
	public void write(HttpServletRequest req);

	/**
	 * 게시글 수정
	 * 
	 * @param req - 요청 정보 객체
	 */
	public void update(HttpServletRequest req);

	/**
	 * 게시글 삭제하기
	 * 
	 * @param qna - 삭제할 게시글 번호 객체
	 */
	public void delete(Qna qna);



	
}
