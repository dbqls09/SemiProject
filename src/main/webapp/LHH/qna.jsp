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
	<div class="board">
		<h3>1대1 문의하기</h3>
		<hr>
		<form action="./write" method="post" >
		<table class="table table-bordered">
		<tr><td class="success">제목</td><td><input type="text" name="title"  style="width:100%;" placeholder="제목을 입력해주세요"></td></tr>
		<tr><td class="success" colspan="2">내용</td></tr>
		<tr><td  colspan="2"><textarea id="content" name="content"  style="width:100%; height: 500px;"
		 placeholder="문의내용에 개인정보(이름,연락처,카드번호 등)가 포함되지 않도록 유의하시기 바랍니다".></textarea></td></tr>
		<tr><td class="success">사진첨부</td><td><small>* JPEG, PNG 형식의 5M 이하의 파일만 첨부 가능합니다. (최대 5개)<br>
		* 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</small>
		<input type="file" name="file"></td></tr>
		</table>	
		
		</form>
		
		<div class="text-center">
			<button id="btnWrite" class="btn btn-info">작성</button>
			<button id="btnCancel" class="btn btn-warning">취소</button>
		</div>

	</div><!-- board -->

	</div><!-- right -->
</div> <!--innerwrap -->


<%@ include file="./footer.jsp" %>