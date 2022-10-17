<%@page import="java.util.List"%>
<%@page import="dto.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="../../resources/css/style.css" >
<%@include file="../layout/header2.jsp" %>

<% Notice viewNotice = (Notice) request.getAttribute("viewNotice"); %> 

<script type="text/javascript">
$(document).ready(function() {
	
	//목록 버튼
	$("#btnList").click(function (){
		$(location).attr('href', '../notice/list')
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
	

<h3>공지사항</h3>
<hr>

<table class="table table-boarderd">
	<tr class="active">
  	<td class="success" >글번호</td><td><%= viewNotice.getNotice_no() %></td>
  	<td class="success">작성일</td><td><%=viewNotice.getNotice_writedate()%></td>
	</tr>
		
	<tr class="active">	
  	<td class="success" >제목</td><td colspan ="5"><%=viewNotice.getNotice_title()%></td>
  	</tr>
	
	
	<tr class="active">
	<td class="success" colspan="6">내용</td>
	</tr >
  	<tr class="active"><td colspan="6"><%= viewNotice.getNotice_content() %></td></tr> 
	
</table>




<div class = "text-center" >
<button id="btnList" class="btn btn-info">목록</button>
</div>







	</div><!-- right -->
</div> <!--innerwrap -->
</div>

<%@include file="../layout/footer.jsp" %>