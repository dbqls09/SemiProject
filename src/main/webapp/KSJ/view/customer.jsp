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
 <div class="home1"><h3>고객센터</h3></div>
<div class="homeBox">

    <div class="home2">
      <div class="h" onclick="location='customer.jsp'">고객센터 홈</div>
      <div class="notify" onclick="location='customer.jsp'">공지사항</div>
      <div class="qna" onclick="location='customer.jsp'">1:1문의</div>
    </div>
    
    <div class="home3">
      <h3>KLC</h3>
      <p>CINEMA</p>
      <p>10:30 ~ 18:30</p>
    </div>
</div>
</div>

<div class="board">
   <table style="margin-top:50px;">
   <caption><h2>∙ 공지/뉴스 ∙</h2></caption>
	<colgroup>
		<col width="80%"/>
		<col width="*"/>
	</colgroup>	
		<tr>
			<th>제목</th>
			<th>등록일</th>
		</tr>
		
		<tr>
			<td><a href="boardHome.jsp?V=1&Q=23&S=공지">[공지] 카카오 선물하기 시스템 점검 안내 (3/1) </a></td>	
			<td style="text-align:center">2022/02/28</td>
		</tr>
		
		<tr>
			<td><a href="boardHome.jsp?V=1&Q=22&S=공지">[공지] The NEWNION 예매 안내</a></td>	
			<td style="text-align:center">2022/02/28</td>
		</tr>
		
		<tr>
			<td><a href="boardHome.jsp?V=1&Q=21&S=공지">[공지] 영화 관람가격 변경 안내</a></td>	
			<td style="text-align:center">2022/02/28</td>
		</tr>
		
		<tr>
			<td><a href="boardHome.jsp?V=1&Q=15&S=공지">[공지] 네이버페이 시스템 점검 안내 (2/12)</a></td>	
			<td style="text-align:center">2022/02/28</td>
		</tr>
		
		<tr>
			<td><a href="boardHome.jsp?V=1&Q=14&S=공지">[공지] 영화 관람료 변경 안내</a></td>	
			<td style="text-align:center">2022/02/28</td>
		</tr>
		
	</table>
</div>

</section>

<%@ include file="./footer.jsp" %>
