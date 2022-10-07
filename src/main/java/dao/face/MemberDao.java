package dao.face;

import java.sql.Connection;

import dto.Member;

public interface MemberDao {

	/*
	 * id와 pw를 동시에 만족하는 회원의 수 조회 -> 로그인 인증값으로 사용
	 * 
	 * @param conn - DB연결 객체
	 * @param member - 조회할 회원의 정보
	 * @return int - 0: 존재하지 않는 회원, 1: 존재하는 회원
	 * 
	 */

	public int selectCntMemberByUser_IdUser_pw(Connection conn, Member member);

	/*
	 * id 이용하여 회원정보 조회
	 * 
	 * @param conn - DB연결 객체
	 * @param memebr - 조회할 id를 가진 객체
	 * @param Member - 조회된 회원 정보
	 */

	public Member selectMemberByUser_idUser_pw(Connection conn, Member member);

	public Member selectMemberByUser_id(Connection conn, Member member);

	public int insert(Connection conn, Member param);

//	int selectCntMemberByUser_idUser_pw(Connection conn, Member member);

}