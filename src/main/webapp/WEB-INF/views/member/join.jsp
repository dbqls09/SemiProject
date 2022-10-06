<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>회원가입</h1>
<span>'*' 표시 항목은 필수 입력 사항입니다</span>
<form action="/member/join" name="joinform" method="post">
<div>
	<div>
	<label for="name">이름</label>
	<input type="name" name="name" id="name" size="20" maxlength="10">*
	</div>

	<div>
	<label for="id">아이디</label>
	<input type="id" name="id" id="id" size="20" maxlength="10">*
	</div>
	
	<div>
	<label for="pw">암호</label>
	<input type="pw" name="pw" id="pw" size="20" maxlength="10">*
	</div>
	
	<div>
	<label for="ck_pw">암호 확인</label>
	<input type="ck_pw" name="ck_pw" id="ck_pw" size="20" maxlength="10">*
	</div>
	
	<div>
	<label for="email">이메일</label>
	<input type="email" name="email" id="email" size="20" maxlength="10">
	</div>
	
	<div>
	<label for="phone">전화번호</label>
	<input type="phone" name="phone" id="phone" size="20" maxlength="10">
	</div>
	
	<div>
	<td>등급</td>
	<td>
		<input type="radio" name="grade" value="0">일반회원
		<input type="radio" name="grade" value="1">관리자
	</td>
	</div>
</div>

<div>
	<button onclick="location.href='/main'">확인</button>
	<button onclick="location.href='/member/join'">취소</button>
</div>

</form>
</body>
</html>