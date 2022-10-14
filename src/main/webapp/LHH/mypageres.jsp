<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../LHH/style.css" >
<%@include file="./header.jsp" %>


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
	
	<div class="right" style="margin-top: 20px;">
	
	<h3>예매내역</h3>
	<hr>
	
<table class="table table-boarderd">
	<tr class="success">
		<th>영화</th>
		<th >극장</th>
		<th>날짜</th>
		<th>인원</th>
	</tr>
		
	
	<tr>
	<td>해리포터</td>
	<td>강남</td>
	<td>10월30일</td>
	<td>1</td>
	</tr>
	
	

</table>



<div class="pull-left">
<button id="btnList" class="btn btn-warning">예매취소</button>
</div>


	



	</div><!-- right -->
</div> <!--innerwrap -->


<%@ include file="./footer.jsp" %>