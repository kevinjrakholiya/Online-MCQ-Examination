<?php 
	session_start();
	  $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/classes/User.php');
	$usr = new User();

	if($_SERVER['REQUEST_METHOD'] == 'POST'){
		$connection = mysqli_connect("localhost","root","");
                    $db = mysqli_select_db($connection,"db_exam");
                    $query= " select * from tbl_user where email = '$_POST[email]'";
                    $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)){
							
							$email        = $_POST['email'];
							$password = ($_POST['password']);
							$userlogin = $usr->userLogin($email,$password);
							$_SESSION['name'] = $row['name'];
						}


	}
?>