<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="../../resources/css/style.css" >

<%@ include file="../layout/header2.jsp" %>


<style>
h3 {text-align: center;}
h2 {color : white;}

</style>

<script type="text/javascript">
$(document).ready(function() {
   
   //수정버튼
   $("#btnUpdate").click(function(){
      $("form").submit();
   })
   $("#btnCancel").click(function() {
      history.go(-1)
   })
   
   //탈퇴버튼
   $("#btnDelete").click(function() {
      $(location).attr('href', '<%=request.getContextPath() %>/member/delete')
   })
   

  
   
   
})


   
</script>

<div class="top"><h2 style = "color: white;">마이페이지</h2></div>
<div class="innerwrap">
   <div class="left">
       <div class="home1">마이페이지</div>
      <div class="homeBox">
   
       <div class="home2">
         <div onclick="location='<%=request.getContextPath() %>/mypage'">마이페이지 홈</div>
         <div onclick="location='<%=request.getContextPath() %>/member/update'">내 정보 수정</div>
         <div onclick="location='<%=request.getContextPath() %>/mypage/res'">예매 내역</div>
       </div>
       
       <div class="home3">
         <h3>KLCINEMA 고객센터</h3>
         <p><i class="fa-solid fa-headset"></i>&nbsp;&nbsp;09:00 ~ 18:00</p>
       </div>
    
      </div><!-- home1 end -->  
   </div><!--left end --><!-- 왼쪽 사이드메뉴 -->
   
   <div class="right" style="margin-top: 20px; color: white;">
   

   <div id="btnBox" class="pull-right" > 
   <button id="btnDelete" class="btn btn-danger">탈퇴하기</button>
   </div>






   
   <h3>회원 정보</h3>
   <hr>

   <!-- from action 값입력 -->
   <form action="<%=request.getContextPath() %>/member/update" method="post" class="form-horizontal">

   <div class="form-group">
      <label for="userid" class="col-xs-2 control-label">아이디</label>
      <div class="col-xs-10">
         <input type="text" id="user_id" name="user_id" class="form-control" readonly  value=<%=session.getAttribute("user_id")%> >
      </div>
   </div>

   <div class="form-group">
      <label for="userpw" class="col-xs-2 control-label">비밀번호</label>
      <div class="col-xs-10">
         <input type="password" id="user_pw" name="user_pw" class="form-control" value=<%=session.getAttribute("user_pw")%> >
      </div>
   </div>
   
<!--    <div class="form-group"> -->
<!--       <label for="userpw" class="col-xs-2 control-label">비밀번호 확인</label> -->
<!--       <div class="col-xs-10"> -->
<!--          <input type="text" id="user_pwchk" name="user_pwchk" class="form-control"> -->
<!--       </div> -->
      
<!--    </div> -->
   
   <div class="form-group">
      <label for="userpw" class="col-xs-2 control-label">이름</label>
      <div class="col-xs-10">
         <input type="text" id="user_name" name="user_name" class="form-control" value=<%=session.getAttribute("user_name")%> >
      </div>
      
      
   </div>
   <div class="form-group">
      <label for="userpw" class="col-xs-2 control-label">생년월일</label>
      <div class="col-xs-10">
         <input type="text" id="user_birth" name="user_birth" class="form-control" value=<%=session.getAttribute("user_birth")%> >
      </div>
      
   </div>
   
   <div class="form-group">
      <label for="userpw" class="col-xs-2 control-label">이메일</label>
      <div class="col-xs-10">
         <input type="text" id="user_email" name="user_email" class="form-control" value=<%=session.getAttribute("user_email")%> >
      </div>
   </div>
   
   
   <div class="form-group">
      <label for="userpw" class="col-xs-2 control-label">전화번호</label>
      <div class="col-xs-10">
         <input type="text" id="user_phone" name="user_phone" class="form-control" value=<%=session.getAttribute("user_phone")%> >
      </div>
   </div>

   <div class="text-center">
      <button type="button" class="btn btn-success" id="btnUpdate">수정</button>
      <button type="button" class="btn btn-warning" id="btnCancel">취소</button>
   </div>


</form>




   </div><!-- right -->
</div> <!--innerwrap -->


<%@ include file="../layout/footer.jsp" %>