<%@include file="navbar.jsp" %>
<%@ page import="java.sql.*" %> 
<html>
<body style='background-color:#D8BFD8'>
	<% 
	PreparedStatement ps=(PreparedStatement)application.getAttribute("select");
	ps.setString(1,request.getParameter("cid"));
	ResultSet rst=ps.executeQuery();
	rst.next();
	%> 

	
	<form action="edit.jsp" method="post">
		<div class='container' style='background-color:pink;padding: 2vw;border-radius: 2vw '>
			<div class='card mx-auto'>
				<div class='card-body'>
					<div class='row from-group'>
						<div class='col-md-10'>
							<label class='la'>Customer Id<span>*</span></label>
							<input type="text" value="<%=rst.getString(1) %>" readonly class='form-control' name="cid" required>
						</div>
					</div>
					
					<div class='row from-group'>
						<div class='col-md-5'>
							<label class='la'>Edited First Name<span>*</span></label>
							<input type="text" value="<%=rst.getString(2) %>" class='form-control' name="first" required>
						</div>
						<div class='col-md-5'>
							<label class='la'>Edited Last Name<span>*</span></label>
							<input type="text" value="<%=rst.getString(3) %>" class='form-control' name="last" required>
						</div>
					</div>
					
					<div class='row form-group'>
					<div class='col-md-5 '>
						<label for='address' class='la'>Edited Address<span>*</span></label>
						<input type='text' value="<%=rst.getString(4) %>" id='address' name='address' class='form-control' required>
					</div>
				
					<div class='col-md-5 '>
						<label for='phone' class='la'>Edited Phone No.<span>*</span></label>
						<input type='text' value="<%=rst.getString(5) %>" id='phone' name='phone' class='form-control' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-10 '>
						<label for='email' class='la'>Edited Email Id<span>*</span></label>
						<input type='text' value="<%=rst.getString(6) %>" id='email' name='email' class='form-control' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-10 '>
						<button class='btn btn-primary'>Update Record</button>
					</div>
				</div>
				
				</div>
			</div>
		</div>
	</form>
</body>
</html>