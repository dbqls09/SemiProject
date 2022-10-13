<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 예매</title>

<style type="text/css">

section{
	font-size: 1.2rem;
}

.ticketBox{
	width: 100%;
	min-height: 500px;
	max-height: 500px;
	overflow: auto;
	background-color: white;
	opacity: 0.7;
	border-radius: 2rem;
}
.ticketHead{
	text-align: center;
}
.ticketList{
	padding: 15px;
	cursor: pointer;
}
.ticketList:hover{
	background: #c2c4c4;
}

</style>


</head>
<body>

</body>

<section>
<div class="top"><h1>∙ 영화 예매 ∙</h1></div>

<div class="ticket">
	<div class="ticketBox">
		<div class="ticketHead"><h3>영화</h3></div>
		<%for(int i = 0; i < movieList.size(); i++) {
		String[] movie = movieList.get(i); 
		String color=""; 
		if(m_no != null && m_no.equals(movie[0])){
			color="style=\"background-image:url('img/main.webp')\" ";
		}
		%>			
		<div class="ticketList"  <%=color%> onClick="location='ticketList.jsp?m_no=<%=movie[0]%>&u_no=<%=session_no%>' ">
		<img style="width:20px" src="img/<%=movie[2].replace(" ","")%>.png"> <!-- 영화등급 -->
		<%=movie[1]%>
		</div>
		<%}%>
	</div>

		<div class="ticketBox">
		<div class="ticketHead"><h3>극장</h3></div>
		<% if(m_no != null && !m_no.equals("")){ 		
			
			conn = DAO.getConnection();
			Statement stmt = conn.createStatement();
			String sql = " SELECT*FROM theater";
			       
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				String[] theater = new String[3];
				theater[0] = rs.getInt("t_no") + "";
				theater[1] = rs.getString("t_name");
				theater[2] = rs.getString("t_address");
				theaterList.add(theater);
			}		
			
			rs.close();
			stmt.close();
			conn.close(); 
			
			
			for(int i = 0; i < theaterList.size(); i++){
			String[] theater = theaterList.get(i); 	
		%>
			<div class="ticketList" onClick="location='ticketSeat.jsp?m_no=<%=m_no%>&u_no=<%=session_no%>&t_no=<%=theater[0]%>' ">
			<%=theater[2]%>
			</div>		
		<%}%>
		<%}%>
	</div>
</div>
</section>

</html>