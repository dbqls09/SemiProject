<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="resources/style.css" >
<%@ include file="../layout/header.jsp" %>

<style>
h3 {text-align: center;}
</style>

<script type="text/javascript">
$(document).ready(function() {
	
	//수정버튼
	$("#btnUpdate").click(function(){
		this.parents("form").submit();
	})
	//취소 버튼
	$("#btnCancel").click(function() {
		history.go(-1)
	})
	//탈퇴 버튼
	$("#btnDelete").click(function() {
		$("form").submit();
	})

	
	
	
})s



</script>

<div class="top"><h2>마이페이지</h2></div>
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
	
<form action="<%=request.getContextPath()%>/member/delete" method="post" class="form-horizontal">
<div class="right" style="margin-top: 20px;">
	<div class="form-group">
	<div id="btnBox" class="pull-right"> 
	<input type="submit" class="btn btn-danger" id="btnDelete">탈퇴하기</button>
	</div>
	</div>
</div>
</form>





	</table>
	
	<!-- from action 값입력 -->
<form action=/member/update" method="post" class="form-horizontal">

	<div class="form-group">
		<label for="userid" class="col-xs-2 control-label">아이디</label>
		<div class="col-xs-10">
			<input type="text" id="user_id" name="user_id" class="form-control"  value= <%=session.getAttribute("user_id")%>> 
		</div>
	</div>

	<div class="form-group">
		<label for="userpw" class="col-xs-2 control-label">비밀번호</label>
		<div class="col-xs-10">
			<input type="text" id="user_pw" name="user_pw" class="form-control" value= <%=session.getAttribute("user_pw")%>>
		</div>
	</div>
	
<!-- 	<div class="form-group"> -->
<!-- 		<label for="userpw" class="col-xs-2 control-label">비밀번호 확인</label> -->
<!-- 		<div class="col-xs-10"> -->
<!-- 			<input type="text" id="user_pwchk" name="user_pwchk" class="form-control"> -->
<!-- 		</div> -->
		
<!-- 	</div> -->
	
			
	</div>
		<div class="form-group">
		<label for="username" class="col-xs-2 control-label">이름</label>
		<div class="col-xs-10">
			<input type="text" id="user_name" name="user_name" class="form-control" value= <%=session.getAttribute("user_name")%>>
		</div>
	</div>
	
	<div class="form-group">
		<label for="userbirth" class="col-xs-2 control-label">생년월일</label>
		<div class="col-xs-10">
			<input type="text" id="user_birth" name="user_birth" class="form-control" value= <%=session.getAttribute("user_birth")%>>

	
	<div class="form-group">
		<label for="useremail" class="col-xs-2 control-label">이메일</label>
		<div class="col-xs-10">
			<input type="text" id="user_email" name="user_email" class="form-control" value= <%=session.getAttribute("user_email")%>>
		</div>
		

	
	
	<div class="form-group">
		<label for="userphone" class="col-xs-2 control-label">전화번호</label>
		<div class="col-xs-10">
			<input type="text" id="user_phone" name="user_phone" class="form-control" value= <%=session.getAttribute("user_phone")%>>
		</div>
	</div>

	<div class="text-center">
		<button type="submit" class="btn btn-success" id="btnUpdate">수정</button>
		<button type="cancel" class="btn btn-warning" id="btnCancel">취소</button>
	</div>


</form>




	</div><!-- right -->
</div> <!--innerwrap -->


<%@ include file="../layout/footer.jsp" %>