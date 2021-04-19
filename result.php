<?php
session_start();
if(!isset($_SESSION['login']))
header("Location:index.php?err12=1");
$con=mysqli_connect("localhost","root","","oq") or die("server not found");
//echo $_POST['que1'];




$query="select * from question";
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
<head><style>
	/*input[type="radio"]{
  
    height: 20px;
    width:025px;
    background-color: red;
    border-radius: 50%;
    }*/
    .container1 {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.container1 input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container1:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container1 input:checked ~ .checkmark {
  background-color: green;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container1 .checkmark:after {
  top: 9px;
  left: 9px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: white;
}







.checkmark1 {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container1:hover input ~ .checkmark1 {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container1 input:checked ~ .checkmark1 {
  background-color: red;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark1:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input:checked ~ .checkmark1:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container1 .checkmark1:after {
  top: 9px;
  left: 9px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: white;
}








.label{
  display: inline-block;
  margin-bottom: 0.5rem;
}
</style>
 
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
		<form method="post" action="thank.php"> 
<input type="submit" name="logout" class="btn btn-success" style="margin-top: 30px;margin-left: 10px;" value="Logout">	</input>
</form>
<h1 style="color:white;"> Score:</h1>
<h4 style="color:white">Total Question: 10</h4>
<h4 style="color:white">Correct Answers :<?php echo $right;?></h4>
<h4 style="color:white">Wrong Answers:<?php echo "$wrong"?></h4>
<h4 style="color:white">Not attempted Question :<?php echo $notattempt;?></h4>
	</div>
<div class="col-4">


<h4  style="color:white;padding-top:40px;margin-left: px; "> Hello 	<? echo $_SESSION['name'].", ";?>,Here is your result</h4>
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