<%@page import="java.sql.*" %>
<%@include file="navbar.jsp" %>
<html>
<body style='background-color:#D8BFD8'>
<form action="edit.jsp" method="post">

	<div class='container' style='background-color:pink;padding: 2vw;border-radius: 2vw '>
		<div class='card mx-auto'>
			<div class='card-body'>
				<div class='row form-group'>
					<div class='col-md-10'>
						<label for="cid" class='la'>Enter Customer Id<span>*</span></label>
						<input type='text' class='form-control' name='cid' class='cid' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-5'>
						<label for="first" class='la'>Updated First Name<span>*</span></label>
						<input type='text' class='form-control' id='first' name='first' required>
					</div>	
					<div class='col-md-5'>
						<label for="last" class='la'>Updated Last Name<span>*</span></label>
						<input type='text' class='form-control' id='last' name='last' required>
					</div>	
				</div>
				
				<div class='row form-group'>
					<div class='col-md-5'>
						<label for="address" class='la'>Updated Address<span>*</span></label>
						<input type='text' class='form-control' name='address' class='address' required>
					</div>
					<div class='col-md-5'>
						<label for="phone" class='la'>Updated phone<span>*</span></label>
						<input type='text' class='form-control' name='phone' class='phone' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-10'>
						<label for="email" class='la'>Updated Email<span>*</span></label>
						<input type='text' class='form-control' name='email' class='email' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-10'>
						<button class='btn btn-primary'>Update Record</button>
					</div>
				</div>
			</div>
		</div>	
	</div>
</form>

</body>
</html>