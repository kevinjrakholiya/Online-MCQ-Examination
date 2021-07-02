<?php include 'inc/header.php'; ?>
<?php 
	Session::checkSession();
?>
<style>
	.starttest a{
		font-family: "Times New Roman", Georgia, Serif;
		font-size: 25px;
		color:#121069;
	}
</style>
<div class="main">
<h1>You are Done!</h1>
	<div class="starttest">
	<p>Congratulations ! You have just Completed the test.</p>
	<p>Final Sore : 
		<?php
			if(isset($_SESSION['score'])){
				echo $_SESSION['score'];

				$connection = mysqli_connect("localhost","root","");
				$db = mysqli_select_db($connection,"db_exam");
				$query= " insert into tbl_result values(null,'$_SESSION[name]',$_SESSION[score],NOW())";
				$query_run = mysqli_query($connection,$query);

				unset($_SESSION['score']);
			}
		?>
	</p>
	<a href="viewans.php">View Correct Answer</a>
	</div>
  </div>
<?php include 'inc/footer.php'; ?>