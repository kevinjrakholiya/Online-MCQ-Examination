<?php 
    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/inc/header.php');
    $connection = mysqli_connect("localhost","root","");
    $db = mysqli_select_db($connection,"db_exam");
    $name="";
    $score="";
    $date="";
    $query= " select * from tbl_result";
?>

<style>
	.main h1{
		
		font-family: "Times New Roman", Georgia, Serif;
		font-size: 30px;
		color:#5e0c17;
	}
</style>
<div class="main">
	<h1>Admin Panel - Student Result</h1>
	
		<div class = "quelist">
			<table class = "tblone">
			<tr>
				<th width = " 40%">Stdent Name</th>
				<th width = "20%">Score</th>
				<th width = "40%">Date & time</th>
			</tr>
	<?php 
	
                         $query_run = mysqli_query($connection,$query);
                         while ($row = mysqli_fetch_assoc($query_run)){
                               $name = $row['name'];             
                               $score = $row['score'];
                               $date = $row['date'];
                    ?>  
                    <tr>
                        <td><?php echo $name; ?></td>
                        <td><?php echo $score; ?></td>
                        <td><?php echo $date; ?></td>

                       
                    </tr>  

                    <?php       
                     }
                     ?>
			</table>
		<div/>
</div>
<?php include 'inc/footer.php'; ?>