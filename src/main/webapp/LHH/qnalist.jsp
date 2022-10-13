<%@page import="controller.QnaListController"%>
<%@page import="dto.Qna"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<link rel="stylesheet" type="text/css" href="../LHH/style.css" >
<%@include file="./header.jsp" %>


<% List<Qna> qnaList = (List) request.getAttribute("qnaList"); %>

<style type="text/css">
th,td {
	text-align: center;
}

td:nth-child(2) {
	text-align: justify;
}

</style>




<script type="text/javascript">
$(document).ready(function(){
	
	$("#btnWrite").click(function() {
		location.href="../qna/write"
	})
	


	
})



</script>



<div class="top"><h2>고객센터</h2></div>
<div class="innerwrap">
	<div class="left">
 		<div class="home1">고객센터</div>
		<div class="homeBox">
	
	    <div class="home2">
	      <div onclick="location='../customer'">고객센터 홈</div>
	      <div onclick="location='../notice/list'">공지사항</div>
	      <div onclick="location='../qna/write'">1:1문의</div>
	    </div>
	    
	    <div class="home3">
	      <h3>KLCINEMA 고객센터</h3>
	      <p><i class="fa-solid fa-headset"></i>&nbsp;&nbsp;09:00 ~ 18:00</p>
	    </div>
    
		</div><!-- home1 end -->  
	</div><!--left end  --><!-- 왼쪽 사이드메뉴-->
	
	
	<div class="right">
	<div class="board">
	<h3>문의 내역</h3>
	<hr>

<table class="table table-striped table-hover table-condensed">
	<tr class="success">
		<th style="width: 15%">글번호</th>
		<th style="width: 45%">제목</th>
		<th style="width: 20%">아이디</th>
		<th style="width: 20%">작성일</th>
	</tr>
	
	<% for(int i=0; i< qnaList.size(); i++) { %>
	<tr>
		<td><%= qnaList.get(i).getQna_no() %></td> 
		
		<td>
			<a href="./view?qna_no=<%=qnaList.get(i).getQna_no() %>">
			<%=qnaList.get(i).getQna_title() %></a>
		</td>
		
		<td><%= qnaList.get(i).getQna_userid() %></td>
		<td><%= qnaList.get(i).getQna_date() %></td>
	</tr>
	
	<% } %>
</table>


<div id="btnBox" class="pull-right"> 
<button id="btnWrite" class="btn btn-info">글쓰기</button>
</div>

<div class="clearfix"></div>
	</div><!-- board -->

<%@ include file="./paging.jsp" %> 
	</div><!-- right -->
</div> <!--innerwrap -->



<%@ include file="./footer.jsp" %>  