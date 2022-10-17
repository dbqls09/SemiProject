<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- footer style -->
<!-- <link rel="stylesheet" href="resources/footer.css" type="text/css"> -->
<style type="text/css">

.footer {
	justify-content: center;
	align-items:center;
 	margin: 0 auto; */
	display: flex;
  	flex-direction: column;
	padding: 24px 0 25px;
	text-align: center;
	color: #909090;
	border-top: 1px solid rgb(144, 144, 144);

}

.list-inline-item {
	text-decoration: none;
	font-size: 12px;
	color: rgb(144, 144, 144);
	width: 55px;
	height: 20px;
/* 	border-right: 1px solid rgba(0,0,0,.1); */
	border-right: rgba(144, 144, 144);
	padding-right: 5px;
}

.list-inline-item-none {
	text-decoration: none;
	font-size: 12px;
	color: rgb(144, 144, 144);
	margin-right: 20px;
}

.list-inline-item-copyright {
	text-decoration: 
	none;
	font-size: 14px;
	font-weight: 500px;
	color: rgb(144, 144, 144);
}

.footer address > span {
	font-size: 12px;
	font-style: normal;
	max-width: 640px;
	margin: 20px auto 0;
	text-align: center;
	word-break: keep-all;
	-webkit-font-smoothing: antialiased;
	color: #b4b4b4;
}

.footer address .info {
	border-right: 1px solid rgba(0,0,0,.1);
	padding-right: 7px;
}

.footer .guide {
	font-size: 12px;
	text-align: center;
	word-break: keep-all;
	-webkit-font-smoothing: antialiased;
	color: #b4b4b4;
}
</style>

<!-- footer -->
<footer class="footer">
	<div class="container">
		<div class="list-inline">
			<a class="list-inline-item" href="#">회사소개</a>
			<a class="list-inline-item" href="#">인재채용</a>
			<a class="list-inline-item" href="#">사회공헌</a>
			<a class="list-inline-item" href="#">제휴/광고/부대사업문의</a>
			<a class="list-inline-item" href="#">이용약관</a>
			<a class="list-inline-item" href="#">위치서비스 이용약관</a>
			<a class="list-inline-item" href="#" style="font-weight: bold">개인정보처리방침</a>
			<a class="list-inline-item" href="#">윤리경영</a>
		</div>
		
		<address style="margin-top: 20px;">
			<span class="info">서울특별시 마포구 월드컵로240</span>
			<span class="info">지상2층(성산동,월드컵주경기장)</span>
			<span class="info">ARS 1544-0070</span>
			<span class="info">대표자명 김유빈</span><br>
			<span class="info">개인정보보호책임자 김유빈</span>
			<span class="info">사업자등록번호 211-86-59478</span>
			<span class="info">통신판매업신고번호 제 2020-서울마포-4545호</span>
			<span class="info">사업자등록번호 211-86-59478</span>
			<span class="num">연락처: 02-6956-0827, 팩스: 02-6442-0128</span><br>
			<span class="list-inline-item-copyright">COPYRIGHT &copy; KLCinema, INC. All rights Reserved</span>
		</address>

	</div>
		
</footer>


</body>
</html>