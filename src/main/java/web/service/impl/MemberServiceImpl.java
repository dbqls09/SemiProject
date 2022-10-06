package web.service.impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import web.dao.face.MemberDao;
import web.dao.impl.MemberDaoImpl;
import web.dto.Member;
import web.service.face.MemberService;

public class MemberServiceImpl implements MemberService{
	
	//DAO 객체
	private MemberDao memberDao = new MemberDaoImpl();
	
	@Override
	public Member getLoginMember(HttpServletRequest req) {
		
		Member member = new Member();
		
		member.setId( req.getParameter("id"));
		member.setPw( req.getParameter("pw"));
		
		return member;
	}
	
	@Override
	public boolean login(Member member) {
		
		//로그인 인증 성공
		if( memberDao.selectCntMemberByIdPw(JDBCTemplate.getConnection(), member) > 0 ) {
			return true;
		} else
	
		//로그인 인증 실패
		return false;
	}
	
	@Override
	public Member info(Member member) {
		return memberDao.selectMemberById(JDBCTemplate.getConnection(), member);
	}
	
//	@Override
//	public Member getParam(HttpServletRequest req) {
//		
//		Member member = new Member();
//		
//		member.setName(req.getParameter("Name"));
//		member.setId(req.getParameter("Id"));
//		member.setPw(req.getParameter("Pw"));
//		member.setEmail(req.getParameter("Email"));
//		member.setPhone(req.getParameter("Phone"));
//		member.setGrade(req.getParameter("Grade"));
//		return null;
//	}
	
	@Override
	public Member getJoinMember(HttpServletRequest req) {
		
		Member member = new Member();
		
		member.setId( req.getParameter("id"));
		member.setPw( req.getParameter("pw"));
		
		return member;
		
	@override
	public void join(Member member) {
		
		Connection conn = JDBCTemplate.getConnection();
	}
		
	}
	
	
	

}
