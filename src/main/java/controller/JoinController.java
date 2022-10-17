package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Member;
import service.face.MemberService;
import service.impl.MemberServiceImpl;

@WebServlet("/main/join")
public class JoinController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private MemberService memberService = new MemberServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/views/member/join.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //전달 파라미터에 대한 한글 인코딩 설정(UTF-8)
        req.setCharacterEncoding("UTF-8");


        //회원가입 전달 파라미터
        Member member = memberService.getJoinMember(req);

        //회원가입 처리
        int result = memberService.join(member);

        //메인으로 리다이렉트
        req.setAttribute("result", result);
        req.getRequestDispatcher("/WEB-INF/views/member/joinafter.jsp").forward(req, resp);





    }

}