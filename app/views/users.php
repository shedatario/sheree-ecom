<?php require_once '../partials/template.php'  ?>
<?php function get_page_content() {

	if(isset($_SESSION['user']) && $_SESSION['user']['roles_id'] ==1){

	
	global $conn;

	?>

	<div class="container">
		<h4 class="text-center">User Admin Page</h4>
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="table-responsive">
					
					<table class="table table-striped table-bordered"> 
						<thead class="thead-dark">
							<tr>
								<th>Username</th>
								<th>First name</th>
								<th>Last name</th>
								<th>Email</th>
								<th>Role</th>
								<th>Action</th>
							</tr>
						</thead>
						
						</tbody>
							<?php
							$get_user_detail_query = "SELECT u.id, u.username, u.firstname, u.lastname, u.email, r.name 
														AS role FROM users u JOIN roles r ON (u.roles_id = r.id); ";

							$user_details = mysqli_query($conn, $get_user_detail_query);
							foreach ($user_details as $indiv_user) {
								// var_export($indiv_user);
								extract($indiv_user);
						
							?>
							<tr>
								<td><?php echo $username; ?></td>
								<td><?php echo $firstname; ?></td>
								<td><?php echo $lastname; ?></td>
								<td><?php echo $email; ?></td>
								<td><?php echo $role; ?></td>
								<td>
									<?php  
										// $id = $id;
										if($role == "admin"){
											echo "<a href = '../controllers/grant_admin.php?id=$id' 
												class = 'btn btn-danger'>Revoke Admin</a>";
										}else{
											echo "<a href = '../controllers/grant_admin.php?id=$id' 
												class = 'btn btn-primary'>Make Admin</a>";
										}
									?>
								</td>

							</tr>

						<?php }; ?>
						</tbody>

					</table>
				</div>
			</div> <!-- end col -->
		</div> <!-- end row -->
	</div> <!-- end container -->




<?php }else{ 
	header('location: ./error.php');
}  ?>

<?php }; ?>