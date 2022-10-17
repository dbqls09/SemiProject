<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../layout/header2.jsp" %>
<link rel="stylesheet" type="text/css" href="../../resources/css/style.css" >
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

<div class="top"><h2 style="color:white;">마이페이지</h2></div>
<div class="innerwrap">
	<div class="left">
 		<div class="home1">마이페이지</div>
		<div class="homeBox">
	
	    <div class="home2">
	      <div onclick="location='<%=request.getContextPath() %>/mypage'">마이페이지 홈</div>
	      <div onclick="location='<%=request.getContextPath() %>/member/update'">내 정보 수정</div>
	      <div onclick="location='<%=request.getContextPath() %>/mypage/res'">예매 내역</div>
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
			<a href="<%=request.getContextPath() %>/member/update" title="회원 정보 페이지로 이동">
				<p>
					<strong style="color:white;">회원 정보</strong>
					회원 정보 수정 <br>회원탈퇴 바로가기
				</p>
			</a>
		</div>
		<div class="block-content">
			<a href="<%=request.getContextPath() %>/mypage/res" title="예매 조회 페이지로 이동">
				<p>
					<strong style="color:white;">예매내역</strong>
					예매내역 확인을 <br>하실 수 있어요
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


<%@ include file="../layout/footer.jsp" %>