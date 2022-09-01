<%@include file="navbar.jsp" %>
<%@page import="java.sql.*" %>
<html>
<body style='background-color:#D8BFD8'>
	<div align="center" class='container card ' style='background-color:white;padding: 2vw;width:50%;border-radius:2vw;border-width:1.5vw;border-color:pink '>
		<form action="customer-list-byid.jsp" method="post">
			<table class='card-body'>
				<tr >
					<td> <label class='la' style='margin-right: auto;margin-left: auto;'>Search By Customer Id</label> </td>
					<td style='width:40%'> <input type="text" placeholder="Customer id" style='padding:0.4vw' class='form-control' name="cid" required> </td>
					<td style='width:15%'> <button class='btn btn-primary'>Search</button> </td>
				</tr>
			</table>
		</form>
	</div>
	
	<div align="center" class='container card' style='background-color: white;padding: 2vw;width:50%;border-radius: 2vw;border-width:1.5vw;border-color:pink '>
		<form action="customer-list-byfirst.jsp" method="post">
			<table class='card-body'>
				<tr>
					<td > <label class='la' style='margin-right: auto;margin-left: auto;'>Search By FirstName</label> </td>
					<td style='width:40%'> <input type="text" placeholder="First Name" style='padding:0.4vw' class='form-control' name="firstname" required>   </td>
					<td style='width:15%'> <button class='btn btn-primary'>Search</button> </td>
				</tr>
			</table>
		</form>
	</div>
	
	<div align="center" class='container card' style='background-color: white;padding: 2vw;width:50%;border-radius: 2vw;border-width:1.5vw;border-color:pink '>
		<form action="customer-list-byaddr.jsp" method="post">
			<table class='card-body'>
				<tr>
					<td> <label class='la' style='margin-right: auto;margin-left: auto;'>Search By Location</label> </td>
					<td style='width:40%'>
						<select name='loca' class='form-control'>
						<%
							Statement st=(Statement)application.getAttribute("addr");
							ResultSet rst=st.executeQuery("select distinct address from customerinfo" );
							while(rst.next())
							{
						%>	
								<option><%=rst.getString(1) %></option>
						<% 	
							}
						%>
						</select>
					 </td>
					<td style='width:15%'> <button class='btn btn-primary'>Search</button> </td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>