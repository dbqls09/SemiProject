<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./style.css">
<%@include file="./header.jsp" %>



<div class="top"><h2>고객센터</h2></div>
<div class="innerwrap">
	<div class="left">
 		<div class="home1">고객센터</div>
		<div class="homeBox">
	
	    <div class="home2">
	      <div onclick="location='cspage.jsp'">고객센터 홈</div>
	      <div onclick="location='notice.jsp'">공지사항</div>
	      <div onclick="location='qna.jsp'">1:1문의</div>
	    </div>
	    
	    <div class="home3">
	      <h3>KLCINEMA 고객센터</h3>
	      <p><i class="fa-solid fa-headset"></i>&nbsp;&nbsp;09:00 ~ 18:00</p>
	    </div>
    
		</div><!-- home1 end -->  
	</div><!--left end -->
	<div class="right">
	








<h3>1대1 문의내역</h3>
<hr>

<table class="table table-bordered">

<tr>
<td class="success" style="width: 10%">글번호</td><td></td>
<td class="success" style="width: 10%">작성일</td><td></td>
<td class="success" style="width: 10%">조회수</td><td></td>
</tr>


<tr>
<td class="success">제목</td><td colspan="5"></td>
</tr>



<tr>
<td class="success" colspan="6" style="text-align: center;">내용</td>
</tr>
<tr><td colspan="6">sdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfs</td></tr>

</table>

<div class="text-center">
	<button id="btnList" class="btn btn-info">목록</button>
	<button id="btnUpdate" class="btn btn-success">수정</button>
	<button id="btnDelete" class="btn btn-warning">삭제</button>
</div>








	</div><!-- right -->
</div> <!--innerwrap -->


<%@ include file="./footer.jsp" %>