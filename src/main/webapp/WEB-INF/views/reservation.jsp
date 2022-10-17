<%@page import="dto.Movie"%>
<%@page import="dto.Theater"%>
<%@page import="dto.Mdate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./layout/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매</title>

<script type="text/javascript">

let menuEvent = document.getElementById("movieList"); 

menuEvent.addEventListener("mouseover", function (event) {
  event.target.style.color = "#fbdd97";
}, false);


menuEvent.addEventListener("mouseout", function(event){
  event.target.style.color = "white";
}, false)


</script>

<%	List<Movie> movieList = (List) request.getAttribute("movieList"); %>
<%	List<Theater> theaterList = (List) request.getAttribute("theaterList"); %>
<%	List<Mdate> mdateList = (List) request.getAttribute("mdateList"); %>

<style type="text/css">

.main1 {
 display: flex;
 justify-content: center;
 text-align: left;
 color: #fff;
} 

.tb {
 display: flex;
 justify-content: center;
 color: #696969;
}

.th {
 text-align: center;
}
.m-table {
 width: 300px;
}

.t-table {
 width: 300px;
 margin-right: 0px;
}

.d-table {
 width: 300px;
}

.box {
 margin-left: 20px;
 width: 280px;
 height: 430px;
 background-color: #696969;
 border-radius: 10px;
}

.img {
 margin-left: 10px;
 margin-top: 15px;
}

.text1 {
 margin-left: 10px;
 color: #fff;
}

.btn {
 display: block;
 margin: auto;
 margin-top: 20px;
}

</style>

</head>
<body>

<br><br>
<div class="main1">
	<div class="main2">
		<h3 style="font-size: 30px; color: #f5f5f5">예매하기</h3>
	</div>
</div>

<br>

<div class="tb">
<table class="m-table">
	<tr>
		<th bgcolor="#f5f5f5" style="width: 15%">영화</th>
	</tr>

	<%	for(int i=0; i<movieList.size(); i++) { %>
	
	<tr>
		<td bgcolor="#f5f5f5" color="#696969" onmouseover="this.style.background='#696969', this.style.color='#fff'" onmouseout="this.style.background='#f5f5f5', this.style.color='#696969'" style="padding-left: 10px;"><%=movieList.get(i).getMovie_age() %> <%=movieList.get(i).getMovie_title() %></td>
	</tr>

	<%	} %>
	
</table>

<table class="t-table">
	<tr>
		<th bgcolor="#f5f5f5" style="width: 15%">극장</th>
	</tr>
	
	<%	for(int i=0; i<theaterList.size(); i++) { %>
	<tr>
		<td bgcolor="#f5f5f5" color="#696969" onmouseover="this.style.background='#696969', this.style.color='#fff'" onmouseout="this.style.background='#f5f5f5', this.style.color='#696969'" style="padding-left: 10px;"><div class="tt"><%=theaterList.get(i).getTheaterName() %></div></td>
	</tr>
	<%	} %>
	<tr style="height: 76px;"><td bgcolor="#f5f5f5" onmouseover="this.style.background='#696969'" onmouseout="this.style.background='#f5f5f5'"></td></tr>
	
</table>
	
<table class="d-table" >
	<tr>
		<th bgcolor="#f5f5f5" style="width: 15%">날짜</th>
	</tr>
	<%	for(int i=0; i<mdateList.size(); i++) { %>
	<tr>
		<td bgcolor="#f5f5f5" color="#696969" onmouseover="this.style.background='#696969', this.style.color='#fff'" onmouseout="this.style.background='#f5f5f5', this.style.color='#696969'" style="padding-left: 10px;"><%=mdateList.get(i).getShowDate() %></td>
	</tr>
	<%	} %>
	<tr style="height: 76px;"><td bgcolor="#f5f5f5" onmouseover="this.style.background='#696969'" onmouseout="this.style.background='#f5f5f5'"></td></tr>
	
</table>

<div class="box">
	<div class="img">
		<img src="/imgs/444.png" style="height: 230px;">
	</div>
	<hr>
	<div class="text1">
		<span>해리포터와 마법사의 돌</span><br><br>
		<span>극장: 강남점</span>
		<span style="padding-left: 20px;">날짜: 10월 20일</span>
	</div>
	<hr>
	<button onclick="location.href='<%=request.getContextPath() %>/seat'" class="btn" style="margin-top: 30px; height: 30px;" >좌석선택</button>
</div>
</div>

<br><br><br><br><br>

<%@ include file="./layout/footer.jsp" %>