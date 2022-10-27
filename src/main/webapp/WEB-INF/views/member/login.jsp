<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
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

.a {
   justify-content: center;
   align-item: center;
   display: flex;
   font-size: 60px;
   
}

.loginform {
/*    color: white; */
/*    width: 200px; */
}

.whole {
   margin : 130px;
   margin-top : 100px;
   justify-content: center;
   align-item: center;
   display: flex;
/*    width: 200px; */
   
}

input {
   margin-left : 10px;
}

.inputbox {
   color: white;
   font-size: 20px;
   margin-top: 20px;
   margin-bottom: 20px;
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
/*    margin-left: 22px; */
   justify-content: center;
   align-text: center;
   display: flex;
}
.howlogin {
   margin-left: 22px;
}

.dologin {
/*    width: 100px; */
/*    height: 100px; */
/*    width: 100px; */
}

.id {
   justify-content: center;
   align-text: center;
   display: flex;
   margin-right: 20px;
   
}


#btnLogin {
   width: 300px;
   display: flex;
   justify-content: center;
   align-text: center;
   margin: 0 auto;
   font-size: 20px;
}

.input {
   padding: 2px;
   margin: 2px;
}

.name {
   padding: 5px;
   color: white;
}



</style>

</head>
<body bgcolor="#050040">

<div class="whole">
<form action="/main/login" method="post" name="loginform">

   <div class="a">
      <div style="color: white;">LOGIN</div>
   </div>

   <br>

   
<!--    <table> -->
<div class="loginform">
   <div class="inputbox">
      <div class="name">
         <div class="id" style=" float: left;">아이디</div>
         <input type="text" name="user_id" id="user_id" style="width:200px;">
      </div>
   
      <div class="name">
         <div class="pw" style="float: left;">비밀번호</div>
         <input type=text" name="user_pw" id="user_pw" style="width:200px;">
      </div>
   </div>
   

<!--       <div class="inputpw"> -->
<!--          <label style="color: white;">비밀번호<input type="text" name="pw"></label> -->
<!--       </div> -->
<!--       </table> -->

      <div class="dologin">
         <button type="submit" id="btnLogin" onclick="return check()">LOGIN</button>
<!--          <button type="button" id="btnCancel" onclick="location.href='/main'">취소 -->
      </div>
      
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

<!--       <div class="howlogin"> -->
<!--          <button type="button">카카오톡으로 로그인</button><br> -->
<!--          <button type="button">페이스북으로 로그인</button><br> -->
<!--          <button type="button">네이버로 로그인</button> -->
<!--       </div> -->

   </div>

<!-- </form> -->
</div>

<%@ include file="../layout/footer.jsp" %>