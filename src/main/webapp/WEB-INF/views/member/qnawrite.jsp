<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" type="text/css" href="../../resources/css/style.css" >
<%@ include file="../layout/header2.jsp"%>


<script type="text/javascript">
$(document).ready(function() {
	
	//작성버튼
	$("#btnWrite").click(function(){
		$("form").submit();
	})
	$("#btnCancel").click(function() {
		history.go(-1)
	})
	$("#btnList").click(function() {
		$(location).attr('href', '/qna/list')
	})
	
	
})

</script>

<div class="top" ><h2 style="color:white;"">고객센터</h2></div>
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
	<div class="board">
	
			<h3>1대1 문의하기</h3>
			<hr>
			<span>고객님의 문의에 답변하는 직원은 고객 여러분의 가족 중 한 사람일 수 있습니다.<br>
				고객의 언어폭력(비하, 욕설, 협박, 성희롱 등)으로부터 직원을 보호하기 위해<Br>
				관련 법에 따라 수사기관에 필요한 조치를 요구할 수 있으며,<br> 
				<span style="color: red;">형법에 의해 처벌 대상이 될 수 있습니다.</span></span>
			<div id="btnBox" class="pull-right" style="margin-bottom: 10px;"> 
			<button id="btnList" class="btn btn-info">문의내역보기</button>
			</div>
			
	
		
		<form action="<%=request.getContextPath() %>/qna/write" method="post"   >
		<table class="table table-bordered">
		<tr><input type="hidden" name="user_id" id="user_id" value=<%=session.getAttribute("user_id") %> readonly></tr>
		
		
		<tr><td class="success">제목</td><td class="active"><input type="text" name="qna_title"  style="width:100%;" placeholder="제목을 입력해주세요"></td></tr>
		<tr><td class="success" colspan="2">내용</td></tr>
		<tr><td  colspan="2" class="active"><textarea id="content" name="qna_content"  style="width:100%; height: 500px;"
		 placeholder="문의내용에 개인정보(이름,연락처,카드번호 등)가 포함되지 않도록 유의하시기 바랍니다 &#13;작성하신 문의는 고객님의 이메일로 답변해드리겠습니다". ></textarea></td></tr>
	
		</table>	
		
		</form>
		
		<div class="text-center">
			<button id="btnWrite" class="btn btn-success">작성</button>
			<button id="btnCancel" class="btn btn-warning">취소</button>
		</div>

	</div><!-- board -->

	</div><!-- right -->
</div> <!--innerwrap -->

<%@ include file="../layout/footer.jsp"%>