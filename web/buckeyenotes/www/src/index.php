<?php

// if (isset($_GET['source'])) {
// 	die(highlight_file(__FILE__));
// }

require("conf/index.conf.php");
error_reporting(0);

session_start();

$authenticated = false;
if (isset($_POST['username']) && isset($_POST['password'])) {
	if (strpos($_POST['password'], '=')) {
		$error = "nice try, hacker >:D I removed your equal signs";
	}
	$sql = "SELECT USERNAME from USERS WHERE USERNAME='" . $_POST['username'] . "' AND PASSWORD='" . $_POST['password'] . "';";
  //echo $sql;
	$ret = $db->querySingle($sql);
	if ($ret == "brutusB3stNut9999") {
		// user authenticated!
		$authenticated = true;
	}

}

?>

<!DOCTYPE HTML>
<html>
<head>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
				<style>
				.input-group {
					margin-bottom: 10px;
				}
				</style>
		</head>
    <body>
        <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
            <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand" href="#">BuckeyeNotes (WIP)</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-left">
                <li><a href="#">Login</a>
                </li>
                </ul>
            </div>
            </div>
        </div>
        <div class="container">
		<div class="row">
			<div class="col">
				<?php
					if (isset($error)) {
						echo $error;
					} else if ($authenticated) {
						echo "Success! your flag is buckeye{wr1t3_ur_0wn_0p3n_2_pwn}";
					} else if (!empty($ret)) {
						echo "Logged in as $ret. Nothing posted yet :(";
					} else if ($_SERVER['REQUEST_METHOD'] == "POST") {
						echo "Invalid username or password";
					}
				 ?>
				<form method="POST" action="/index.php" class="align-center">
					<div class="input-group">
					  <input type="text" name="username" class="form-control" placeholder="Username">
					</div>
					<div class="input-group">
					  <input type="text" name="password" class="form-control" placeholder="Password">
					 </span>
					</div>
					<div class="input-group">
					  <span class="input-group-btn">
						<button class="btn btn-default" type="submit">Login</button>
					 </span>
					</div>
				</form>
			</div>
		</div>
	</div>

	<br/>
	<br/>
	<br/>
        <div class="container-fluid">

        </div>

	<script
              src="https://code.jquery.com/jquery-3.1.1.min.js"
              integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
              crossorigin="anonymous"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</body>
</html>
