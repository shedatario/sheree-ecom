
$(document).ready( function (){
	function validate_registration_form(){
		let errors = 0;
		let username = $("#username").val();
		let password = $("#password").val();
		let firstname = $("#firstname").val();
		let lastname = $("#lastname").val();
		let email = $("#email").val();
		let address = $("#address").val();

		
		//username should be greater than or equal to 10 characters
		if(username.length < 10){
			$("#username").next().html("Username should be at least 10 characters");
			$("#username").next().css('color', 'red');
			errors++;
		}else{
			$('#username').next().html('');
		}

		//password should be atleast 8 characters
		if(password.length < 8){
			$("#password").next().html("Please provide a stronger password");
			$("#password").next().css('color', 'red');
			errors++;
		}else{
			$("#password").next().html(' ');
		}

		//email should include the @ symbol
		if(!email.includes("@")){
			$("#email").next().html("Please provide a valid email");
			$("#email").next().css('color', 'red');
			errors++;
		}else{
			$("#email").next().html(' ');
		}

		//address
		if(!address != ""){
			$("#address").next().html("Please provide a valid address");
			$("#address").next().css('color', 'red');
			errors++;
		}else{
			$("#address").next().html(' ');
		}

		//firstname
		if(!firstname != ""){
			$("#firstname").next().html("Please provide first name");
			$("#firstname").next().css('color', 'red');
			errors++;
		}else{
			$("#firstname").next().html('');
		}

		//lastname
		if(!lastname != ""){
			$("#lastname").next().html("Please provide last name");
			$("#lastname").next().css('color', 'red');
			errors++;
		}else{
			$("#lastname").next().html('');
		}

		
		//password
		if(password !== $("#confirm_password").val()){
			$("#confirm_password").next().html("Password should match");
			$("#confirm_password").next().css('color', 'red');
			errors++;
		}else{
			$("#confirm_password").next().html('');
		}

		//errors
		if(errors > 0) {
			return false;
		}else
			return true;

		}

	// On click Register
	$("#add_user").click( (e) =>{
		if(validate_registration_form()){
			let username = $("#username").val();
			let password = $("#password").val();
			let firstname = $("#firstname").val();
			let lastname = $("#lastname").val();
			let email = $("#email").val();
			let address = $("#address").val();

		$.ajax({
			url: '../controllers/create_user.php',
			method: "POST",
			data: {
				'username' :username,
				'password' :password,
				'firstname' :firstname,
				'lastname' :lastname,
				'email' :email,
				'address' :address
			},
			"success":(data) => {
				if(data == "user_exists"){
					$("#username").next().css('color', 'red');
					$("#username").next().html("username already exists");
				}else{
					alert("user created successfully");	

					//redirect browser
					window.location.replace("../../index.php");
					} //if else
				} //end success data
			}); //end ajax
		} //if statement
	}); //end onclick register




	//On click Login and Session
	$("#login").click( (e) =>{
		let username = $("#username").val();
		let password = $("#password").val();

		$.ajax({
			"url" : "../controllers/authenticate.php",
			"method" : "POST",
			"data" : {
				'username' : username,
				'password' : password
			}, //end data
			"success":(data) => {
				if (data == "login_failed") {
					$("#username").next().css('color', 'red');
					$("#username").next().html("Please provide correct username");
				}else{
					alert("success");
					window.location.replace("../views/home.php");
				} //end if else
	
			} // end success data
	
		}); //end ajax
	
	}); //end onclick login



	//prep for add to cart
	$(document).on('click', '.add-to-cart', (e) =>{
		//to prevent default behavior and to override it with our own
		e.preventDefault();
		
		//prevent parent elements to be triggered
		e.stopPropagation();

		//target is the one to trigger the event 
		let item_id = $(e.target).attr("data-id");
		let item_quantity = parseInt($(e.target).prev().val());

		$.ajax({
			"url" : "../controllers/update_cart.php",
			"method" : "POST",
			"data" : {
				'item_id' : item_id,
				'item_quantity' : item_quantity,
				'update_from_cart_page': 0
			},
			"success" : (data) => {
				$("#cart-count").html(data);
			} //end success data
		
		}); //end ajax

	}); //end document add-to-cart


		// get Total
		function getTotal(){
			let total = 0;
			$(".item_subtotal").each(function(e){
				total += parseFloat($(this).html());
			});
			$("#total_price").html(total.toFixed(2));
		}

		//edit cart
		$(".item_quantity > input").on("input", function(e) {

			let item_id = $(e.target).attr('data-id');
			let quantity = parseInt($(e.target).val());
			// console.log(quantity);
			let price = parseFloat ($(e.target).parents('tr').find(".item_price").html());
			// console.log(price);
			subTotal = quantity * price;
			$(e.target).parents('tr').find('.item_subtotal').html(subTotal.toFixed(2));

			getTotal();

			$.ajax({
				"method" : "POST",
				"url" : "../controllers/update_cart.php",
				"data" : {
					'item_id':item_id,
					'item_quantity' : quantity,
					'update_from_cart_page': 1
				},
				"success": (data) => {
					$("#cart-count").html(data);
				}

			}); //end ajax

		}); //end of on input


		//delete button
		$(document).on("click", '.item_remove', (e) =>{
			e.preventDefault();
			e.stopPropagation();

			let item_id = $(e.target).attr('data-id');

			$.ajax({
				"method": "POST",
				"url": "../controllers/update_cart.php",
				"data": {
					'item_id': item_id,
					'item_quantity': 0
				},
				"beforeSend": () => {
					return confirm("Are you sure you want to delete?");
				},
				"success": (data) => {
					$(e.target).parents('tr').remove();
					$('#cart-count').html(data);
					getTotal();
					window.location.replace("../views/cart.php");
				}
			}); //end of ajax
		}); //end of document on click delete button




		//submit profile form updates
		$('#update_info').click( () =>{
			// alert("asd");
			$('#update_user_details').submit();
		});





}); //end document