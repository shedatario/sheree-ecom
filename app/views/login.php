<?php require_once "../partials/template.php"  ?>


<?php function get_page_content() {  ?>

	<div class="container"> <!-- start container -->
		<div class="row">
			<div class="col-sm-8">
				
				<div class="card text-center" style="width: 30rem;">
				 	<img class="card-img-top" src="../assets/images/login.jpeg" alt="Card image cap" height="50%" width="50%">
					<div class="card-body">
						<form>
							<div class="form-group">
								<label for = "username"></label>
								<input type="text" id = "username" name="username" class="form-control" placeholder="Enter username">
								<span class="validation"></span>
							</div>

							<div class="form-group">
								<label for="password"></label>
								<input type="password" id = "password" name="password" class="form-control" placeholder="Enter password">
								<span class="validation"></span>
							</div>
						</form>	<!-- end form -->
					</div>
					<div class="text-center py-1">
					<a href="./register.php" class="btn btn-secondary"> Register </a>
					<button type = "submit" class="btn btn-primary" id="login"> Login </button>	
				</div>
				</div>
				
			</div>
		</div>
		

		
			
	</div><!--  end container -->

	



<?php }  ?>