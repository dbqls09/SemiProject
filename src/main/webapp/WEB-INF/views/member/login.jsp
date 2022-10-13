<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function() {
	
	//아이디 입력창에 포커스
	$("input").eq(0).focus() {
		
	//패스워드 입력창에 엔터키 입력 시 submit
	$("input").eq(1).keydown(function(e){
		if( e.keycode == 13 ) { //엔터키
				$("#btnLogin").click();
		}
	})
	
	
	//로그인 버튼
	$("#btnLogin").click(function() {
		$(this).parents("form").submit();
	})
	
	//취소 버튼
	$("#btnCancel").click(function() {
		$(location).attr('href','/main') //메인으로
	})
	
	
})
</script>

<script type="text/javascript">

function check() {
	if(document.loginform.user_id.value == ""){
		alert("아이디를 입력하세요.");
		document.loginform.user_id.focus();
		return false;
		
	} else if(document.loginform.user_pw.value == "") {
		alert("비밀번호를 입력하세요.");
		document.loginform.user_pw.focus();
		return false;
		
	} else {
		return true;
	}
	
}

</script>

<style type="text/css">

td {
	color: white;
}

.whole {
	margin : 300px;
	margin-top : 100px;
}
input {
	margin-left : 10px;
}
.chkbox {
	margin-left : 63px;
	font-size : 2px;
	margin-top : 5px;
}
span {
	font-size: 12px;
}
.option1 {
	margin-left: 22px;
}
.howlogin {
	margin-left: 22px;
}

.dologin {
	width: 100px;
	height: 100px;
}
</style>

</head>
<body bgcolor="#050040">

<div class="whole">
<form action="/main/login" method="post" name="loginform">

	<div class="title">
		<h1 style="color: white;">LOGIN</h1>
	</div>

	<br>

	<div>
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="user_id" id="user_id"></td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="user_pw" id="user_pw"></td>
		</tr>
		<br>

<!-- 		<div class="inputpw"> -->
<!-- 			<label style="color: white;">비밀번호<input type="text" name="pw"></label> -->
<!-- 		</div> -->
		</table>

		<div class="chkbox">
			<input type="checkbox" id="chk1" name="chk" >
			<label for="ck1" style="color: white">아이디 저장</label>
		</div>
		
		<span class="dologin">
			<button type="submit" id="btnLogin" onclick="return check()">LOGIN</button>
			<button type="button" id="btnCancel">취소</button>
		</span>
		
		</form>
		
		
		

		<br>

		<div class="option1" style="color: white">
			<span>ID/PW 찿기</span>
			<span>|</span>
			<span onclick="location.href='/main/join'">회원가입</span>
			<span>|</span>
			<span>비회원 예매</span>
		</div>

		<br>

		<div class="howlogin">
			<button type="button">카카오톡으로 로그인</button><br>
			<button type="button">페이스북으로 로그인</button><br>
			<button type="button">네이버로 로그인</button>
		</div>

	</div>

<!-- </form> -->
</div>

</body>
</html>