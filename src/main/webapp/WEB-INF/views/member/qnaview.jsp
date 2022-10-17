 <%@page import="dto.Qna"%>
<%@page import="java.util.List"%> 
 <%@ page language="java" contentType="text/html; charset=UTF-8" 
      pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../../resources/css/style.css" >   
<%@ include file="../layout/header2.jsp"%>

<% Qna viewQna = (Qna) request.getAttribute("viewQna"); %>   
  

<script type="text/javascript">
$(document).ready(function() {
	
	//목록 버튼
	$("#btnList").click(function (){
		$(location).attr('href', '../qna/list')
	})
	
	
	//수정 버튼
	$("#btnUpdate").click(function (){
		$(location).attr('href', '/qna/update?qna_no=<%=viewQna.getQna_no() %>')
		
	})
	//삭제 버튼
	$("#btnDelete").click(function (){
		$(location).attr('href', './delete?qna_no=<%=viewQna.getQna_no() %>')
	})
	
})




</script>

<div class="top"><h2 style="color:white;">고객센터</h2></div>
<div class="innerwrap">
	<div class="left">
 		<div class="home1">고객센터</div>
		<div class="homeBox">
	
	    <div class="home2">
	      <div onclick="location='<%=request.getContextPath() %>/customer'">고객센터 홈</div>
	      <div onclick="location='<%=request.getContextPath() %>/notice/list'">공지사항</div>
	      <div onclick="location='<%=request.getContextPath() %>/qna/write'">1:1문의</div>
	    </div>
	    
	    <div class="home3">
	      <h3>KLCINEMA 고객센터</h3>
	      <p><i class="fa-solid fa-headset"></i>&nbsp;&nbsp;09:00 ~ 18:00</p>
	    </div>
    
		</div><!-- home1 end -->  
	</div><!--left end -->
	<div class="right" style="color:white;">
	

<h3>문의 내역</h3>
<hr>

<table class="table table-boarderd">
	<tr>
  	<td class="success" >글번호</td><td class="active"><%= viewQna.getQna_no() %></td>
  	<td class="success">아이디</td><td class="active"><%=viewQna.getQna_userid() %></td>
  	<td class="success">작성일</td><td class="active"><%= viewQna.getQna_date() %></td> 
	</tr>
		
	<tr>	
  	<td class="success" colspan="1">제목</td><td class="active" colspan="5" ><%=viewQna.getQna_title() %></td> 
	</tr>	
	
	<tr>	
	</tr>	
	
	
	<tr>
	<td class="success" colspan="6">내용</td>
	</tr>
  	<tr><td class="active" colspan="6"><%= viewQna.getQna_content() %></td></tr> 
	
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


<%@ include file="../layout/footer.jsp"%>
