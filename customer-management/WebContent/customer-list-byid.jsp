<%@ include file="navbar.jsp"%>
<%@ page import="java.sql.*"  %>
<body style='background-color:#D8BFD8'>
	<div class='container'style='background-color:pink;padding: 2vw;border-radius: 2vw '>
		<div class='card mx-auto'>
			<div class='card-body'>
				<%
					PreparedStatement ps=(PreparedStatement)application.getAttribute("select");
					ps.setString(1,request.getParameter("cid"));
					ResultSet rst=ps.executeQuery();
					if(!rst.next())
					{
				%>
				
				<div class='dv' style='background-color:pink;padding: 2vw;border-radius: 2vw '>
					<label class='head' style='font-weight: bold'>customer record not found <img src="css/sad.png"  height="60px" width="60px"></label>
					
				</div>
				<% 
					return;
					}
				%>
					
		
			
				<div class='table '>
				<table class='table table-hover'>
					<thead>
					  	<tr>
					  		<th class='la'>Customer ID</th><th class='la'>First Name</th><th class='la'>Last Name</th>
					  		<th class='la'>Address</th><th class='la'>Phone</th><th class='la'>Email</th>
					  	</tr>
					</thead>
					<% 
						rst.beforeFirst();
						while(rst.next())
						{
					%>
						<tr>
							<td class='la'><%=rst.getString(1) %></td>
							<td class='la'><%=rst.getString(2) %></td>
							<td class='la'><%=rst.getString(3) %></td>
							<td class='la'><%=rst.getString(4) %></td>
							<td class='la'><%=rst.getString(5) %></td>
							<td class='la'><%=rst.getString(6) %></td>
						</tr>
					<% 
						}
					%>
				</table>	
				</div>
			</div>
		</div>
	</div>
</body>