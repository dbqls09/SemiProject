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
<form action="/main/login" method="post">

<script>
   window.alert('로그인 실패>.<');
   window.location.href='/main/login';
</script>

</form>

<% } %>

</body>
</html>