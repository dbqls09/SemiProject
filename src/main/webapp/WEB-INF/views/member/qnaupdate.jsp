 <%@page import="dto.Qna"%>
<%@page import="java.util.List"%> 
 <%@ page language="java" contentType="text/html; charset=UTF-8" 
      pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../../resources/css/style.css" >
<%@include file="../layout/header2.jsp" %>


<% Qna updateQna = (Qna) request.getAttribute("updateQna"); %>   
  

<script type="text/javascript">
$(document).ready(function() {
	
	//수정 버튼
	$("#btnUpdate").click(function (){
		$("form").submit();
	})
	
	
	//취소 버튼
	$("#btnCancel").click(function (){
		history.go(-1)
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
<form action="<%=request.getContextPath() %>/qna/update" method="post"   >
<input type="hidden" name="qna_no" value="<%= updateQna.getQna_no() %>">
<table class="table table-boarderd">
	<tr>
  	<td class="success" >글번호</td><td class="active"><%= updateQna.getQna_no() %></td>
  	<td class="success">아이디</td><td class="active"><%=updateQna.getQna_userid() %></td>
  	<td class="success">작성일</td><td class="active"><%= updateQna.getQna_date() %></td> 
	</tr>
		
	<tr>	
  	<td class="success" colspan="1">제목</td><td colspan="5"  class="active"><input type="text" name="qna_title" style="width:100%;" value="<%=updateQna.getQna_title() %>"></td> 
	</tr>	
	
	<tr>
	</tr>	
	
	
	<tr>
	<td class="success" colspan="6">내용</td>
	</tr>
  	<tr><td colspan="6" class="active"><textarea id="content" name="qna_content"  style="width:100%; height: 500px;">
	<%=updateQna.getQna_content() %>
	</textarea></td></tr> 
	
</table>
</form>

<div class = "text-center" >
<button id="btnUpdate" class="btn btn-success" >수정</button>
<button id="btnCancel" class="btn btn-warning" >취소</button>
</div>


	</div><!-- right -->
</div> <!--innerwrap -->


<%@include file="../layout/footer.jsp" %>
