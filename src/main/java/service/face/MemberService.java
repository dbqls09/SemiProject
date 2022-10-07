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

	}
