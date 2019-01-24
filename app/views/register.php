<?php  require_once '../partials/template.php'?>


<?php function get_page_content() { 

	global $conn; ?>

<div class="container-fluid mt-2 text-center text-light">
	<div class="jumbotron bg-dark">
		<h2>Register</h2>
	</div>
</div>

<div class="container">
	<form>
		<div class="row">
			<div class="col-sm-6"> <!-- start left side-->
				<div class="form-group">
					<label for = "firstname"> First Name: </label>
					<input type="text" id = "firstname" name="firstname" class="form-control" placeholder="Enter your first name">
					<span class="validation"></span>
				</div>

				<div class="form-group">
					<label for = "lastname"> Last Name: </label>
					<input type="text" id = "lastname" name="lastname" class="form-control" placeholder="Enter your last name">
					<span class="validation"></span>
				</div>

				<div class="form-group">
					<label for = "email"> Email: </label>
					<input type="text" id="email" name="email" class="form-control" placeholder="Enter your email address">
					<span class="validation"></span>
				</div>
			
				<div class="form-group">
					<label for="address"> Address: </label>
					<input type="text" id = "address" name="address" class="form-control" placeholder="Enter your home address">
					<span class="validation"></span>
				</div>
			</div> <!-- end left side-->


			<div class="col-sm-6"> <!-- start right side -->
				<div class="form-group">
					<label for = "username"> Username: </label>
					<input type="text" id = "username" name="username" class="form-control" placeholder="Enter your username">
					<span class="validation"></span>
				</div>

				<div class="form-group">
					<label for = "password"> Password: </label>
					<input type="password" id = "password" name="password" class="form-control" placeholder="Enter password">
					<span class="validation"></span>
				</div>

				<div class="form-group">
					<label for = "confirm_password"> Confirm Password: </label>
					<input type="password" id = "confirm_password" name="confirm_password" class="form-control" placeholder="Confirm password">
					<span class="validation"></span>
				</div> 

			</div> <!-- end right side -->
		</div> <!-- end row -->
	</form>	<!-- end form -->

	<div class="mb-5 mt-3 text-center"> <!-- button -->
		<a href="./login.php" class="btn btn-secondary">Login</a>
		<button id = "add_user" class="btn btn-primary text-light" type="button">Register</button>	


	</div>
</div>





<?php   }; ?>
