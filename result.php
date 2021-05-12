<?php
session_start();
if(!isset($_SESSION['login']))
header("Location:signin.php?err13=1");
$con=mysqli_connect("localhost","root","","oq") or die("server not found");
//echo $_POST['que1'];

$email = $_SESSION['login'];
$q = "select * from regd where email = '$email'";
$res=mysqli_query($con,$q) or die("wrong query");

while($result=mysqli_fetch_array($res)){
    $sub= $result['sub'];
}
$query="select * from question where sub = '$sub'";

$x=mysqli_query($con,$query) or die("wrong query");
$array=mysqli_fetch_array($x);
$email=$_SESSION['login'];
$query1="select * from result where email='$email'";

$z=mysqli_query($con,$query1) or die("wrong result");
$array2=mysqli_fetch_array($z);
$right=0;
$wrong=0;
$notattempt=0;
for($i=1;$i<=10;$i++)
{
	
if($array2["$i"]==$array['answer'])
		$right++;
	else if($array2["$i"]=="0")
		$notattempt++;
	else if($array2["$i"]!=$array['answer'])
		$wrong++;

$array=mysqli_fetch_array($x);
}

?>

<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="file/bootstrap-4.2.1-dist/css/bootstrap.min.css">
  <script src="file/jquery.min.js"></script>
  <script src="file/bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>

 
<title>


	</title>
	</head>

<body>
<div style="background: rgba(76, 175, 80, 0.1);">
<div class="container-fluid bg-dark jumbotron shadow-lg text-left bg-dark rounded-0 text-light" style=";"  >
	
<div class="row">
	<div class="col-4">
		<form method="post" action="logout.php"> 
<input type="submit" name="logout" class="btn btn-danger" style="margin-top: 30px;margin-left: 10px;" value="Logout">	</input>
</form>
<h1 style="color:white;"> Score:</h1>
<h4 style="color:white">Total Question: 10</h4>
<h4 style="color:white">Correct Answers :<?php echo $right;?></h4>
<h4 style="color:white">Wrong Answers:<?php echo "$wrong"?></h4>
<h4 style="color:white">Not attempted Question :<?php echo $notattempt;?></h4>
	</div>
<div class="col-4">


<h4  style="color:white;padding-top:40px;margin-left: px; "> Hello 	<?php echo $_SESSION['name'];?>, Here is your result</h4>
</div>

<div>
<form method="post" action="viewresult.php"> 
    <input type="submit" name="viewresult" class="btn btn-info" style="display: flex;

  height: 100px;
  border: 3px solid green;
  height: 100px;
 
  border: 2px solid blue;" value="View Result">	</input>
</form>
</div>

</div>

</div>
</div>
</body>