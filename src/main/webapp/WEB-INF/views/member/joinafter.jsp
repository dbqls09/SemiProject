<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>

<%
int result = (int)request.getAttribute("result"); 
String msg = result>0? "회원 가입 성공" : "회원 가입 실패 ㅜ";
%>

<script>
window.alert('<%=msg%>');
window.location.href='/main';
</script>

</body>
</html>