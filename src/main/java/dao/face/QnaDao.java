package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Qna;
import dto.QnaFile;
import util.Paging;

public interface QnaDao {


	/**
	 * 테이블 전체 조회
	 * 
	 * @param  conn - DB연결 객체
	 * @return -  List<Board> - 테이블 전체 조회 결과 목록
	 */
	public List<Qna> selectAll(Connection conn);

	/**
	 * 테이블 전체 조회
	 * -> 페이징 처리 추가
	 * 
	 * @param  conn - DB연결 객체
	 * @param paging - 페이징 정보 객체
	 * @return -  List<Board> - 테이블 페이징 목록 조회 결과
	 */
	public List<Qna> selectAll(Connection conn, Paging paging);

	/**
	 * 총 게시글 수 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return int - 테이블의 전체 행 수
	 */
	public int selectCntAll(Connection conn);

	
	/**
	 * 지정된 qnono의 게시글 조회하기
	 * 
	 * @param conn -DB연결 객체
	 * @param qnono -조회할 게시글의 qnano를 가진 DTO객체
	 * @return Qna - 조회된 게시글의 상제정보 DTO객체
	 */
	public Qna selectQnaByQnano(Connection conn, Qna qnano);

	/**
	 * 게시글 입력
	 * 
	 * @param conn - DB연결 객체
	 * @param qna - 삽입될 게시글 내용
	 * @return int - INSERT 쿼리 수행결과
	 */
	public int insert(Connection conn, Qna qna);

	/**
	 * 게시글 수정
	 * 
	 * @param conn - DB연결 객체
	 * @param  qna- 수정할 내용을 담은 객체
	 * @return UPDATE 
	 */
	public int update(Connection conn, Qna qna);

	/**
	 * 게시글 삭제
	 * @param conn - DB연결 객체
	 * @param qna - 삭제할 게시글 번호
	 * @return delete - 수행결과
	 */
	public int delete(Connection conn, Qna qna);



}
