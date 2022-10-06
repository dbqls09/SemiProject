<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

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

</style>

</head>
<body>

<div class="whole">
<form action="" method="post">

	<div class="title">
		<h1>LOGIN</h1>
	</div>
	
	<br>
	
	<div>
		<div class="inputid">
			<label style="margin-left:10px;">아이디<input type="text" name="id" style="margin-left: 15px;"></label>
		</div>
	
		<br>
	
		<div class="inputpw">
			<label>비밀번호<input type="text" name="pw"></label>
		</div>
	
		<div class="chkbox">
			<input type="checkbox" id="chk1" name="chk" >
			<label for="ck1">아이디 저장</label>
		</div>
		
		<br>
		
		<div class="option1">
			<span>ID/PW 찿기</span>
			<span>|</span>
			<span>회원가입</span>
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
	
</form>
</div>

</body>
</html>