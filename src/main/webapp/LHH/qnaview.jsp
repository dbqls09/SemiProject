 <%@page import="dto.Qna"%>
<%@page import="java.util.List"%> 
 <%@ page language="java" contentType="text/html; charset=UTF-8" 
      pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../LHH/style.css" >      
<%@include file="./header.jsp" %>

<% Qna viewQna = (Qna) request.getAttribute("viewQna"); %>   
  

<script type="text/javascript">
$(document).ready(function() {
	
	//목록 버튼
	$("#btnList").click(function (){
		$(location).attr('href', '../qna/list')
	})
	
	
	//수정 버튼
	$("#btnUpdate").click(function (){
	
	})
	//삭제 버튼
	$("#btnDelete").click(function (){
	
	})
	
})




</script>

<div class="top"><h2>고객센터</h2></div>
<div class="innerwrap">
	<div class="left">
 		<div class="home1">고객센터</div>
		<div class="homeBox">
	
	    <div class="home2">
	      <div onclick="location='cspage.jsp'">고객센터 홈</div>
	      <div onclick="location='notice.jsp'">공지사항</div>
	      <div onclick="location='../qna/write'">1:1문의</div>
	    </div>
	    
	    <div class="home3">
	      <h3>KLCINEMA 고객센터</h3>
	      <p><i class="fa-solid fa-headset"></i>&nbsp;&nbsp;09:00 ~ 18:00</p>
	    </div>
    
		</div><!-- home1 end -->  
	</div><!--left end -->
	<div class="right">
	

<h1>게시글 상세보기</h1>
<hr>

<table class="table table-boarderd">
	<tr>
  	<td class="success" >글번호</td><td><%= viewQna.getQna_no() %></td>
  	<td class="success">아이디</td><td><%=viewQna.getQna_userid() %></td>
  	<td class="success">작성일</td><td><%= viewQna.getQna_date() %></td> 
	</tr>
		
	<tr>	
  	<td class="success" colspan="1">제목</td><td colspan="5" ><%=viewQna.getQna_title() %></td> 
	</tr>	
	
	<tr>	
	</tr>	
	
	
	<tr>
	<td class="success" colspan="6">내용</td>
	</tr>
  	<tr><td colspan="6"><%= viewQna.getQna_content() %></td></tr> 
	
</table>



<div class="pull-left">
<button id="btnList" class="btn btn-info">목록</button>
</div>
<div class = "text-center" >
<button id="btnUpdate" class="btn btn-success" >수정</button>
<button id="btnDelete" class="btn btn-warning" >삭제</button>
</div>


	</div><!-- right -->
</div> <!--innerwrap -->


<%@ include file="./footer.jsp" %>
