<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

$(documet).ready(function(){
	$("#btnJoin").click(function(){
		this.parents("form").submit();
	})
	
})

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
  height:400px;
  padding: 30px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  top:40%;
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
  width: 100%;
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
<body>

<form action="/movie/join" method="POST" class="joinForm">
      <h2>회원가입</h2>
      
      <div class="textForm">
        <input id="user_id" name="user_id" type="text" class="user_id" placeholder="아이디">
      </div>
      
      <div class="textForm">
        <input id="user_pw" name="user_pw" type="password" class="user_pw" placeholder="비밀번호">
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
      
      <input type="submit" id="btnJoin" class="btn" value="회원가입"/>
      
</form>

</body>
</html>