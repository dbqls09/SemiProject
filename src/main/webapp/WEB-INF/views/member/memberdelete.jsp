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
	
	//삭제버튼
	$("#btnDelete").click(function(){
		$("form").submit();
	})
	$("#btnCancel").click(function() {
		history.go(-1)
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
	
<form action="<%=request.getContextPath() %>/member/delete" method="post" class="form-horizontal" name="user_delete">

	<div class="form-group">
		<label for="userid" class="col-xs-2 control-label">아이디</label>
		<div class="col-xs-10">
			<input type="text" id="user_id" name="user_id" class="form-control" value=<%=session.getAttribute("user_id")%> style="width: 50%;"readonly>
			<br><br>
			<h4><%=session.getAttribute("user_name")%>님, 정말 탈퇴하시겠어요? </h4>
		</div>
	</div>

	
		
	

	<div class="text-center">
		<button class="btn btn-success" id="btnDelete" onclick="idCheck()">탈퇴</button>
		<button type="button" class="btn btn-warning" id="btnCancel">취소</button>
	</div>


</form>




	


	</div><!-- right -->
</div> <!--innerwrap -->

<%@ include file="../layout/footer.jsp" %>
    
