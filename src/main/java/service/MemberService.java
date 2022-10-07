package service;

import javax.servlet.http.HttpServletRequest;

import dto.Member;

public interface MemberService {

	
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
	public void join(Member member);
	
	


	

}
