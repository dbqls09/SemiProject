<%@page import="dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<% Movie movieCode = (Movie)request.getAttribute("movieCode"); %>
<script type="text/javascript">



</script>

<style type="text/css">

.movie {
	justify-content: center;
	align-items: center;
	display: flex;
}

.info-whole {
	float: right;
	color: white;
	margin-left: 30px ; 
/* 	justify-content: center; */
/* 	align-items: center; */
 	display: flex; 
}

.movie-text {margin-left:  40px;}


 .movie-title .movie-info {
   float: right;  
 	margin-left: 30px; 
 } 

.movie-info {
	border-right: 2px;
	border-color: white;
	
}

.btn-reserv{
/* 	padding: 2px; */
	margin-top : 5px;
}




</style>


</head>

<body style="background-color: #050040; !important">
<br>

<% if (session.getAttribute("login") == null) { %>
<form action="/main/login" method="post">

<script>
   window.alert('로그인 후 이용해주세요');
   window.location.href='/main/login';
</script>

</form>


<%} else if( session.getAttribute("login") != null && (boolean) session.getAttribute("login"))  { %> 

<form action="/reservation" method="post" >

<div class="movie">
	
	
		<div class="info-whole">
		<div class="photo">
			<%	if( Integer.parseInt( request.getParameter("movie_code") ) == 444 ) { %>
		<img src="https://movie-phinf.pstatic.net/20181019_236/1539926790655oHv5z_JPEG/movie_image.jpg?type=m203_290_2" height="400px;" width="270px" style="border-radius: 10px;">
			<%	} else if( Integer.parseInt( request.getParameter("movie_code") ) == 111 ) { %>
		<img src="https://movie-phinf.pstatic.net/20180518_218/1526609377997LxLgL_JPEG/movie_image.jpg?type=m203_290_2" height="400px" width="270px" style="border-radius: 10px;">
			<%	} else if( Integer.parseInt( request.getParameter("movie_code"))  == 222 ) { %>
		<img src="https://movie-phinf.pstatic.net/20220929_135/1664441921246ae2RC_JPEG/movie_image.jpg?type=m203_290_2" height="400px;" width="270px" style="border-radius: 10px;">
			<%	} else if( Integer.parseInt( request.getParameter("movie_code"))  == 333 ) { %>
		<img src="https://movie-phinf.pstatic.net/20220826_188/1661489945659Su2RI_JPEG/movie_image.jpg?type=m203_290_2" height="400px;" width="270px" style="border-radius: 10px;">
			<%	} %>	
			
			</div><!--photo  -->
	
	<div class="movie-text">
			<div class="movie-title">
			<h2><%=movieCode.getMovie_title() %></h2>
			</div>
			
			<div class="movie-info">
			<span class="">감독 : <%=movieCode.getMovie_director() %>  </span><br>
			<span class="">출연진 : <%=movieCode.getMovie_actor() %> </span><br>
			<span class="">장르 : <%=movieCode.getMovie_genre() %> </span><br>
			<span class="">등급 : <%=movieCode.getMovie_age() %>  </span><br>
			<span class="">개봉일 : <%=movieCode.getMovie_date() %></span>
			</div>
			
			<div class="btn-reserv">
			<input type="submit" id="btn1" class="btn" value="예매하기" style="color: #050040;">
			</div>
		</div>
		</div><!-- movie-text -->
	
	

	</div><!-- movie -->

</form>

<% } %>



	
	
	
<%@ include file="../layout/footer.jsp" %>