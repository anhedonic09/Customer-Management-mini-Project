<%@ include file="navbar.jsp"%> 
<%@ page import="java.sql.*" %>
<html>
<body style='background-color:#D8BFD8'>
	<form action="delete.jsp" method="post">
		<div class='container dv' style='background-color:pink;padding: 2vw;border-radius: 2vw '>
			<div class='card  mx-auto'>
				<div class='card-body col-md-5 mx-auto'>
					<div class=' row from-group'>
						<label for='cid' class='la'>Enter Customer Id<span>*</span></label>
						<input type="text" name="cid" class='form-control' required>
					</div>					
			
					<div class='col-md-4 mx-auto dv' align="right" >
						<button class='btn btn-primary'>Delete</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
