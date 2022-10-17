<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>

<% if (session.getAttribute("login") == null) { %>
alrt('로그인 실패\n로그인 페이지로 이동합니다.');
location.href="/main/login"
<% } %>

</body>
</html>