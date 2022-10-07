package dao;

import java.sql.Connection;

import dto.Member;

public interface MemberDao {

	/**
	 * 회원정보 삽입
	 * 
	 * @param conn -DB연결객체
	 * @param member - 회원가입 정보 객체
	 * @return int  - INSERT 수행 결과 
	 */
	public int insert(Connection conn, Member member);

}
