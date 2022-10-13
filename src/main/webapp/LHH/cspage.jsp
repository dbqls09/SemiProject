<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="./style.css" >
<%@include file="./header.jsp" %>

<style>
.custo-main .main-block .block-content {
    float: left;
    width: 280px;
    height: 170px;
/*     margin-bottom: 10px; */
}

.block-content{
	border: solid 1px #C3C3C3;
	margin-right: 10px; margin-bottom: 40px;
	padding-top : 30px;  border-radius: 10px;
}

.custo-main .main-block .block-content a p strong {
    display: block;
    margin-bottom: 10px;
    font-size: 1.3333em;
    font-weight: 400;
    color: #222;
}

.image > img {
    width: 530px;
    height: 245px;
    border-radius: 10px;
    box-shadow: 2px 2px 5px 0 rgb(0 0 0 / 50%);
}
 .cont {
    margin: 10px 0 0 0;
    line-height: 1.1;
}
.tit {
    display: inline-block;
}

</style>

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
	<div class="right" style="margin-top: 20px;">
	

<div class="custo-main">
	<div class="main-block">
		
	
		<div class="block-content">
			<a href="qna.jsp" title="1:1 문의 페이지로 이동">
				<p>
					<strong>1:1 문의</strong>
					해결되지않은 문제가 있나요?<br>1:1문의로 문의주세요
				</p>
			</a>
		</div>
		<div class="block-content">
			<a href="notice.jsp" title="공지사항 페이지로 이동">
				<p>
					<strong>공지사항</strong>
					공지사항을 확인해주세요 
				</p>
			</a>
		</div>


	</div><!-- main-block -->

	</div><!-- custo-main -->
	<div class="image">
	<img src="https://img.megabox.co.kr/SharedImg/event/2022/09/08/kksffF5fStwr6wbytC1Ozy4qjW2e4SE2.jpg" alt="">
	<div class="cont">
		<p class="tit">Comming Soon</p>
	</div>
	</div>

	</div><!-- right -->
</div> <!--innerwrap -->


<%@ include file="./footer.jsp" %>