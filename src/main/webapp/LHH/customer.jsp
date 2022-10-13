<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="./header.jsp" %>

<style>
.innerwrap {
    width: 1100px;
    margin: 0 auto;
    display:flex;
}

.left{width:30%; }
.right{width:70%;margin-left: 80px;  }
.board{
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
	height: 50px;
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
	<div class="right" style="margin-top: 20px;">
	

<div class="custo-main">
	<div class="main-block">
		
	
		<div class="block-content">
			<a href="<%=request.getContextPath() %>/qna/write" title="1:1 문의 페이지로 이동">
				<p>
					<strong>1:1 문의</strong>
					해결되지않은 문제가 있나요?<br>1:1문의로 문의주세요
				</p>
			</a>
		</div>
		<div class="block-content">
			<a href="<%=request.getContextPath() %>/notice/list" title="공지사항 페이지로 이동">
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