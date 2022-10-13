<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#btnJoin").click(function(){
		this.parents("form").submit();
	})
	
})

//입력하지 않고 넘어갈시 경고창
function check()
{
	var form = document.userInfo;
	//중복 누르지 않고 넘어갈시
	if (form.idDuplication.value!="idCheck"){
		alert("중복체크 해주세요")
		return false;
	}
	
	//아이디 빈칸일시
	if (!form.user_id.value){
		alert("아이디를 입력하세요")
		return false;
	}
	
	//비밀번호 빈칸일시
	if (!form.user_pw.value){
		alert("비밀번호를 입력하세요")
		return false;
	}
	
	//이름 빈칸일시
	if (!form.user_name.value){
		alert("이름을 입력하세요")
		return false;
	}
	
	
	//생년월일 빈칸일시
	if (!form.user_birth.value){
		alert("생년월일을 입력하세요")
		return false;
	}
	
	//이메일 빈칸일시
	if (!form.user_email.value){
		alert("이메일을 입력하세요")
		return false;
	}
	
	//전화번호 빈칸일시
	if (!form.user_phone.value){
		alert("전화번호를 입력하세요")
		return false;
	}
	
	//비밀번호랑 비밀번호확인 입력값이 다를시
	if(form.user_pw.value != form.user_pwcheck.value){
		alert("비밀번호를 동일하게 입력하세요");
		return false;
	}
}
	
// function openIdChk(){ 
//   window.name = "parentForm";
//   window.open("/id/check", "chkForm" ,"width=500, height=300,resizable = no,scrollbars=no");
// }


function idCheck(){
	if(document.userInfo.user_id.value=="" || document.userInfo.user_id.value.lengh < 0 ){
		alert("id를입력하세요")
		return;
	}
	
	url = "/id/check?user_id=" + document.userInfo.user_id.value;
	open(url , "confirm",
		"toolbar=no, location=no, status=no , menubar=no,scrollbar=no,resizable=no,width=500,height=300"
	)
	
}

</script>

<style type="text/css">

* {
  margin: 0px;
  padding: 0px;
  text-decoration: none;


}

body {
  background-image:#34495e;
}

.joinForm {
  position:absolute;
  width:400px;
  height:700px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:60%;
  left:50%;
  transform: translate(-50%,-50%);
  border-radius: 15px;
}

.joinForm h2 {
  text-align: center;
  margin: 30px;
}

.textForm {
  border-bottom: 2px solid #adadad;
  margin: 30px;
  padding: 10px 10px;
}


.user_id {
  width: 80%;
  border:none;
  outline:none;
  font-size:16px;
  height:25px;
  background: none;
}

.user_pw {
  width: 100%;
  border:none;
  outline:none;
  font-size:16px;
  height:25px;
  background: none;
}

.user_pwcheck {
  width: 100%;
  border:none;
  outline:none;
  font-size:16px;
  height:25px;
  background: none;
}

.user_name {
  width: 100%;
  border:none;
  outline:none;
  font-size:16px;
  height:25px;
  background: none;
}

.user_email {
  width: 100%;
  border:none;
  outline:none;
  font-size:16px;
  height:25px;
  background: none;
}

.user_birth {
  width: 100%;
  border:none;
  outline:none;
  font-size:16px;
  height:25px;
  background: none;
}


.user_phone {
  width: 100%;
  border:none;
  outline:none;
  font-size:16px;
  height:25px;
  background: none;
}

.btn {
  margin-bottom: 40px;
  width:80%;
  height:40px;
  font-weight: bold;
  border:none;
  display:inline;
}



</style>
</head>
<body bgcolor="#050040">

<form action="/main/join" method="POST" class="joinForm"  name="userInfo"  onsubmit="return check()">
	<h2>회원가입</h2>

	<div class="textForm">		
			<input id="user_id" name="user_id" type="text" class="user_id" placeholder="아이디" >		
			<input type="button" class="idcheck" value="중복확인" onclick="idCheck()">	
			<input type="hidden" name="idDuplication" value="idUncheck">	
	</div>
      

      	
      
      <div class="textForm">
        <input id="user_pw" name="user_pw" type="password" class="user_pw" placeholder="비밀번호">
      </div>
      
      <div class="textForm">
        <input id="user_pwcheck" name="user_pwcheck" type="password" class="user_pwcheck" placeholder="비밀번호확인">
      </div>
      
      <div class="textForm">
        <input id="user_name" name="user_name" type="text" class="user_name" placeholder="이름">
      </div>
      
      <div class="textForm">
        <input id="user_birth" name="user_birth" type="text" class="user_birth" placeholder="생년월일">
      </div>
      
       <div class="textForm">
        <input id="user_email" name="user_email" type="text" class="user_email" placeholder="이메일">
      </div>
      
      <div class="textForm">
        <input id="user_phone" name="user_phone" type="text" class="user_phone" placeholder="전화번호">
      </div>
      
      <input type="submit" id="btnJoin" class="btn" value="회원가입">
      
</form>

</body>
</html>