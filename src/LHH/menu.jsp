<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 부트스트랩 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
<style type="text/css">
.innerwrap {
    width: 1100px;
    margin: 0 auto;
}

.left{width: 30%;}
.right{width:70%;}
.board{
	display: flex;
	justify-content: center;
	align-items: center;
}

.homeBox{
	margin-bottom: 50px;
	border-radius: 0 0 1rem 1rem;
	border: 2px solid #d7d8da;
	border-top: 0;
}
.home,.home1,.home2,.home3{
	color: #f1f1f1;   
    padding: 20px;
    border-radius: 0.8rem 0.8rem 0.8rem 0.8rem;
}
.home{
	background-color: #f2f4f5;
}
.home1{
	height: 20px;
	background-color: #3c3c3c;
	border-radius: 0.8rem 0.8rem 0 0;
	text-align: center;
	font-weight: 800;
}

.home2{
	color: #333;
	background-color: #f2f4f5;
	border-radius: 0 0 0 0;
}
.home2 > div{
	margin: 0;
	padding: 1rem;
	border-bottom: 1px solid #d7d8da;
	cursor: pointer;
}
.home2 > div:hover{
	color: #317188;
	background-color: #ffffff;
}
.home3{
	color: #666666;
	background-color: #ffffff;
	border-radius: 0 0 0.8rem 0.8rem;
	border-top: 1px solid #d7d8da;
}

.home3 > h3, p {text-align: center;}
</style>

</head>
<body>

<div class="innerwrap">
<div class="top"><h2>고객센터</h2></div>
<div class="left">
 <div class="home1">고객센터</div>
	<div class="homeBox">

    <div class="home2">
      <div onclick="location='boardHome.jsp'">고객센터 홈</div>
      <div onclick="location='boardNotification.jsp'">공지사항</div>
      <div onclick="location='boardQnaList.jsp'">1:1문의</div>
      <div onclick="location='boardView.jsp?view=c'">개인정보처리방침</div>
    </div>
    
    <div class="home3">
      <h3>KLCINEMA 고객센터</h3>
      <p><i class="fa-solid fa-headset"></i>&nbsp;&nbsp;09:00 ~ 18:00</p>
    </div>
    
	</div><!-- home1 end -->  
</div><!--left end -->
<div class="right">
<div class="board">
<h1>게시글 작성</h1>
<hr>
<form action="./write" method="post" >
<table class="table table-bordered">
<tr><td class="info">제목</td><td><input type="text" name="title"  style="width:100%;"></td></tr>
<tr><td class="info" colspan="2">본문</td></tr>
<tr><td  colspan="2"><textarea id="content" name="content"  style="width:100%;"></textarea></td></tr>
</table>	

첨부파일 <input type="file" name="file">
</form>

<div class="text-center">
	<button id="btnWrite" class="btn btn-primary">작성</button>
	<button id="btnCancel" class="btn btn-danger">취소</button>
</div>

</div><!-- baord -->

</div><!-- right -->
</div> <!--innerwrap -->
