<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp" %>

<style>
.h{
	color: #317188;
	background-color: #fff; 
}
</style>

<link rel="stylesheet" href="./style.css">


<section>
<div class="top" style="text-align:left"></div>
<!-- 사이드 메뉴입니다. --> 

<div class="rightcolumn">
 <div class="home1"><h3>마이페이지</h3></div>
<div class="homeBox">

    <div class="home2">
      <div class="h" onclick="location='mypage.jsp'">내 정보 수정 및 탈퇴</div>
      <div class="notify" onclick="location='mypage.jsp'">예매 조회 및 취소</div>
    </div>
    
    <div class="home3">
      <h3>KLC</h3>
      <p>CINEMA</p>
      <p>10:30 ~ 18:30</p>
    </div>
</div>
</div>


<h1 align="center">내 정보 수정</h1>
<br><br>

<div class="board">

<form action="/update" method="POST" id="form" style="font-size: medium;">
	<div>
	
	    <div>
            <label for="userid">아이디</label>
            <input type="text" name="userid" id="userid" value="<%=session.getAttribute("user_id") %>" style="margin-left: 37px; border: none;" readonly="readonly">
        </div>
        
        <div>
            <label for="name">이름</label>
            <input type="text" name="name" id="name" value="<%=session.getAttribute("user_name") %>" style="margin-left: 50px; border: none;" readonly="readonly">
        </div>

        <div>
            <label for="userpw">비밀번호</label>
            <input type="password" name="userpw" id="userpw" value="<%=session.getAttribute("user_pw") %>" style="margin-left: 25.5px;"> *
        </div>
		<div>
            <label for="userpw">암호확인</label>
            <input type="password" name="userpw2" id="userpw2" value="<%=session.getAttribute("user_pw") %>" style="margin-left: 25.5px;"> *
        </div>
        <div>
            <label for="email">이메일</label>
            <input type="text" name="email" id="email" value="<%=session.getAttribute("user_email") %>" style="margin-left: 40px;">
        </div>
         <div>
            <label for="phone">전화번호</label>
            <input type="text" name="phone" id="phone" value="<%=session.getAttribute("user_phone") %>" style="margin-left: 25.5px;">
        </div>       
        
        <br>
 
         <div align="center">
            <input type="submit" value="확인" onclick="return update()" >
            <input type="button" value="취소" onclick="location.href='/login/success'">
            <input type="button" value="탈퇴" onclick="location.href='/login/success'">
        </div>
        
	</div>        
</form>

</div>

</section>

<%@ include file="./footer.jsp" %>
