<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>회원 전용 페이지</h1>
<% if( session.getAttribute("login") != null && (boolean) session.getAttribute("login")) %>
<h3>안녕하세요, <%=session.getAttribute("name") %>님.</h3>
<br><br>

<%-- 로그인 상태 --%>
<%-- <% if( session.getAttribute("login") != null && (boolean) session.getAttribute("login")) %> --%>
<button onclick="location.href='/main'">로그아웃</button>
<button onclick="location.href='/member/update'">회원정보변경</button>


</body>
</html>