package service.face;

import javax.servlet.http.HttpServletRequest;

import dto.Member;

public interface MemberService {

	/**
	 * id와 pw를 동시에 만족하는 회원의 수를 조회 -> 로그인 인증값으로 사용
	 * 
	 * @param conn - DB 연결 객체
	 * @param member - 조회할 회원의 정보
	 * 
	 * @return int - 0: 존재하지 않는 회원, 1: 존재하는 회원
	 */

	public Member getLoginMember(HttpServletRequest req);

	/**
	 * id를 이용하여 회원정보 조회
	 * 
	 * @param conn - DB연결 객체
	 * @param member - 조회할 id를 가진 객체
	 * @return Member - 조회된 회원 정보
	 */

	public boolean login(Member member);

	public Member info(Member member);

	public Member getParam(HttpServletRequest req);
	
	
	/**
	 * 회원가입 정보 추출
	 * 
	 * 
	 * @param req - 요청 객체 정보
	 * @return Member - 회원가입 정보 객체
	 */
	Member getJoinMember(HttpServletRequest req);

	/**
	 * 회원가입 처리
	 * 
	 * 
	 * @param member - 회원가입 정보 객체
	 */
	public int join(Member member);
	
	
//	/**
//	 * 정보 수정 처리
//	 * 
//	 * @param conn - DB연결 객체
//	 * @param member - 조회할 회원 정보
//	 * @return Member - 조회된 회원 정보
//	 * 
//	 */
//	
	
	// 회원 정보 조회(?)
	public Member view(Member user_id);
	
	// 회원 정보 수정
	public void update(HttpServletRequest req);
	
	/**
	 * 
	 * @param member - 삭제할 정보 객체
	 */
	// 회원 탈퇴 ( 정보 삭제 )
	public void delete(HttpServletRequest req);

//	// reservation에 넘겨줄 아이디 찾아오기
//	public Member getuser_id(HttpServletRequest req);
	
	

	
	
	
	
	
	
	
	
	
	
	

	}