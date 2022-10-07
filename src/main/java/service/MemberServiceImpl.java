package service;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.MemberDao;
import dao.MemberDaoImpl;
import dto.Member;

public class MemberServiceImpl implements MemberService {

	//DAO 객체
	private MemberDao memberDao = new MemberDaoImpl();
	
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
		
		if( memberDao.insert(conn,member) > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
	}
}
