<?php 
$paypal = new \PayPal\Rest\ApiContext(
	new \PayPal\Auth\OAuthTokenCredential(
		"AaTY1qVQ6VDzQF3ZxML4cMAF6SlgBwAzTR7DetlflqQNYoE7twOgvX3UczLwJADZzrFv6-XmwhrgP2j-",
		"EDN-LXnIujOZqwEIKlIOfLxDzLIIYg0yimR1Pq254AAJ_r07W9e1VO6vcg2CGyCV7eZAgqCt5yLTtaCv")
);

?>