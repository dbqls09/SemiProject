<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%-- 로그인 성공 --%>
<% if(session.getAttribute("login") != null && (boolean) session.getAttribute("login")) { %>
<strong><%=session.getAttribute("user_name") %>님, 환영합니다.</strong><br>
<% } %> 

<%--비로그인 상태 --%>
<% if( session.getAttribute("login") == null) {%>
<strong>로그인이 필요합니다</strong><br><br>

<% } %>

 

</body>
</html>