<%@ include file="navbar.jsp"%>
<%@ page import="java.sql.*"  %>
<body style='background-color:#D8BFD8'>
<form action="save-record.jsp" method="post">
	<div class='container'style='background-color:pink;padding: 2vw;border-radius: 2vw '>
		<div class='card mx-auto'>
			<div class='card-body'>
				<div class='table '>
				<table class='table table-hover'>
					<thead>
					  	<tr>
					  		<th class='la'>Customer ID</th><th class='la'>First Name</th><th class='la'>Last Name</th>
					  		<th class='la'>Address</th><th class='la'>Phone</th><th class='la'>Email</th>
					  		<th class='la' style='color:magenta'>Action</th>
					  	</tr>
					</thead>
					<%
						Statement st=(Statement)application.getAttribute("st");
						ResultSet rst=st.executeQuery("select * from customerinfo ");
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
							<td class='la'>
								<a href='edit-customer-bylist.jsp?cid=<%=rst.getString(1) %>' onclick='return confirm("Are you sure, you want to edit")'><i class='fa fa-edit'></i>Edit |</a>
								<a href='delete.jsp?cid=<%=rst.getString(1) %>' onclick='return confirm("Are you sure, you want to delete ?")'><i class='fa fa-trash'></i>Delete</a>
							</td>
						</tr>
					<% 
						}
					%>
				</table>	
				</div>
			</div>
		</div>
	</div>
</form>
</body>