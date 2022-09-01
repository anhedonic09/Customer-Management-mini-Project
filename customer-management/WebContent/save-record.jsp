<%@ include file="navbar.jsp"%>
<%@ page import="java.sql.*"%>
<html>
<body style='background-color:#D8BFD8'>
	<%
	PreparedStatement ps=(PreparedStatement)application.getAttribute("save");
	
	
	ps.setString(1,request.getParameter("cid"));
	ps.setString(2,request.getParameter("firstname"));
	ps.setString(3,request.getParameter("lastname"));
	ps.setString(4,request.getParameter("address"));
	ps.setString(5,request.getParameter("phone"));
	ps.setString(6,request.getParameter("email"));
	ps.executeUpdate();
	%>
	<div class='dv' style='background-color:pink;padding: 2vw;border-radius: 2vw '>
		<label class='head' style='font-weight: bold'>customer record added successfully</label>
	</div>
</body>
</html>
