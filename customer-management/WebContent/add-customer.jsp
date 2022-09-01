<%@ include file="navbar.jsp"%>
<body style='background-color:#D8BFD8'>
<form action="save-record.jsp" method="post" >
	<div class='container ' style='background-color:pink;padding: 2vw;border-radius: 2vw '>
		<div class='card mx-auto'  >
			<div class='card-body' >
				<div class='row form-group'>
					<div class='col-md-10 '>
						<label for='cid' class='la'>Enter Customer Id<span>*</span></label>
						<input type='text' id='cid' name='cid' class='form-control' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-5 '>
						<label for='firstname' class='la'>Enter First Name<span>*</span></label>
						<input type='text' id='firstname' name='firstname' class='form-control' required>
					</div>
				
					<div class='col-md-5 '>
						<label for='lastname' class='la'>Enter Last Name<span>*</span></label>
						<input type='text' id='lastname' name='lastname' class='form-control' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-5 '>
						<label for='address' class='la'>Enter Address<span>*</span></label>
						<input type='text' id='address' name='address' class='form-control' required>
					</div>
				
					<div class='col-md-5 '>
						<label for='phone' class='la'>Enter Phone No.<span>*</span></label>
						<input type='text' id='phone' name='phone' class='form-control' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-10 '>
						<label for='email' class='la'>Enter Email Id<span>*</span></label>
						<input type='text' id='email' name='email' class='form-control' required>
					</div>
				</div>
				
				<div class='row form-group'>
					<div class='col-md-10 '>
						<button class='btn btn-primary'>Save Record</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
</body>