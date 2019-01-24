<?php  require_once '../partials/template.php';  ?>

<?php  function get_page_content() { 

if(!isset($_SESSION['user']) || isset($_SESSION['user']) && $_SESSION['user']['roles_id']==2){
	 // require_once '../controllers/connect.php';

	global $conn; //connects to the $conn outside the function

	
?>


	<!-- <div class="container"> -->

		<div class="row no-gutters">

			<!-- categories -->
			<div class="col-sm-2 p-2 mt-3">
				<h2> Stylish Bags For Women</h2>
				<ul class="list-group">
					<a href="catalog.php" class="text-light">
						<li class="list-group-item bg-dark">All</li>
					</a>

					<?php
					$sql1 = "SELECT * FROM categories";
					$categories = mysqli_query($conn, $sql1);

					foreach ($categories as $category) { ?>
						<a class = "text-light"href="catalog.php?category_id=<?php echo $category['id'] ; ?>">
							<li class="list-group-item bg-dark mt-1">
								<?php echo $category ['name'];  ?>
							
							</li>	
						</a>
						<?php } ?>
				</ul>

			<!-- sorting -->
			<h2 class="mt-3">Sort</h2>
			<ul class="list-group">
				<a class = "text-light" href="../controllers/sort.php?sort=asc">
					<li class="list-group-item bg-dark mt-1">
						Price(lowest to highest)
					</li>
				</a>

				<a class = "text-light" href="../controllers/sort.php?sort=desc">
					<li class="list-group-item bg-dark mt-1" >
						Price(highest to lowest)
					</li>
				</a>
			</ul>
	
			</div>

			<!-- items -->
			<div class="col-sm-10 mt-4">
				<div class="container">
	
					<?php

					$sql2 = "SELECT * FROM items";

					// filter via category
					if(isset($_GET['category_id'])) {
						$sql2 .= " WHERE category_id =".$_GET['category_id'];
					}

					// display sorted items
					if(isset($_SESSION['sort'])){
						$sql2 .= $_SESSION['sort'];
					}
					

					$items = mysqli_query($conn, $sql2);

					echo "<div class='row'>";

					foreach ($items as $item) { ?>
						<div class="col-sm-4">
							<div class="card h-100">
								<img class = "card-img-top" src="<?php echo $item['image_path']; ?>">
								<div class="card-body">
									<h4 class="card-title">
										<?php echo $item['name']; ?>
									</h4>
									<p class="card-text">
										<?php echo $item ['description'];  ?>
										<br>
										<?php echo $item ['price']; ?>
									</p>
								</div> 

								<!-- add to cart -->
								<div class="card-footer">
									<input type="number" class="form-control" value="1">
									<button type="submit" class="btn btn-block btn-outline-dark add-to-cart" data-id="<?php echo $item['id']; ?>"> Add to cart </button>
								</div> <!-- end card footer -->

							</div> <!-- end card -->
						</div> <!-- end item col-->
						<?php } echo "</div>"; ?> <!-- end items -->
				</div> <!-- end container -->
			</div> <!-- end col -->
		</div> <!-- end row -->

	<!-- </div> end container -->

<?php  }else{
	header('location: ./error.php');
	} ?>




<?php }; ?>