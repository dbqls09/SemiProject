package service.impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.MemberDao;
import dao.impl.MemberDaoImpl;
import dto.Member;
import service.face.MemberService;

public class MemberServiceImpl implements MemberService{

	//DAO 객체
	private MemberDao memberDao = new MemberDaoImpl();

	@Override
	public Member getLoginMember(HttpServletRequest req) {

		Member member = new Member();

		member.setUser_id( req.getParameter("user_id"));
		member.setUser_pw( req.getParameter("user_pw"));

		return member;
	}

	@Override
	public boolean login(Member member) {

		//로그인 인증 성공
		if( memberDao.selectCntMemberByUser_IdUser_pw(JDBCTemplate.getConnection(), member) > 0) {
			return true;
		} else; {

		//로그인 인증 실패
		return false;
		}
	}

	@Override
	public Member info(Member member) {
		return memberDao.selectMemberByUser_id(JDBCTemplate.getConnection(), member);
    }

	@Override
	public Member getParam(HttpServletRequest req) {

		Member member = new Member();

		member.setUser_name(req.getParameter("User_id"));
		member.setUser_pw(req.getParameter("User_pw"));
		member.setUser_name(req.getParameter("User_name"));
		member.setUser_birth(req.getParameter("User_birth"));
		member.setUser_email(req.getParameter("User_email"));
		member.setUser_phone(req.getParameter("User_phone"));
		return member;

	}
	

	@Override
	public Member getJoinMember(HttpServletRequest req) {
	
		Member member = new Member();
		
		member.setUser_id(req.getParameter("user_id"));
		member.setUser_pw(req.getParameter("user_pw"));
		member.setUser_name(req.getParameter("user_name"));
		member.setUser_birth(req.getParameter("user_birth"));
		member.setUser_email(req.getParameter("user_email"));
		member.setUser_phone(req.getParameter("user_phone"));
		
		return member;
		
	}
	
	@Override
	public void join(Member member) {
		
		Connection conn = JDBCTemplate.getConnection();
		
//		//DB에 데이터 삽입
//		int result = memberDao.insert(conn, param);
//		
		//결과 처리
		if( memberDao.insert(conn,member) > 0) {
			JDBCTemplate.commit(conn);
//			return param;
			
		} else {
			JDBCTemplate.rollback(conn);
//			return null;
			
		}
	}


}