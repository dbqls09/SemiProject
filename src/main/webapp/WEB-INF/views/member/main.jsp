<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

//아이디 입력창에 포커스 부여
$("#btnLogin").click(function() {
	$(this).parents("form").submit();
})

//패스워드 입력창에 엔터키 입력 시 submit
$("input").eq(1).ketdown(function(e) {
	if( e.keyCode == 13) { //엔터키
		$("#btnLogin").click();	
	}
})

//로그인 버튼
// $("#btnLogin").click(function() {
// 	$(this).parents("form").submit();
// })

// //취소 버튼
// $("#btnCancel").click(function() {
// 	$(location).attr('href', '/') //메인으로 가기
// }) 

// //회원가입 버튼
// $("#btnJoin").click(function() {
// 	$(this).parents("form").submit();
// })

</script>

</head>
<body>

<h1>로그인</h1>

<% if(null == session.getAttribute("login") || !(Boolean) session.getAttribute("login")) {%>
<form action="<%=request.getContextPath() %>" method="post">

<label>아이디<input type="text" name="id"></label><br>
<label>암 호<input type="text" name="pw"></label><br>

</form>
<% } %>

<br>

<div>
	<button onclick="location.href='./member/logout'">로그인</button>
	<button onclick="locaion.href='./main'">취소</button>
	<button onclick="location.href='./member/join'">회원가입</a></button>
</div>

<!-- </form> -->


</body>
</html>