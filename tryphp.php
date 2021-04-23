<?php
session_start();

if(!isset($_SESSION['login']))
header("Location:index.php?err12=1");


$sub = $_POST["sub"];
$email = $_SESSION['login'];
$con=mysqli_connect("localhost","root","","oq") or die("database not found");
$query= "insert into regd set email='$email', sub='$sub'";
$x=	mysqli_query($con,$query) or die(header("Location:signin.php?err=1"));
header("Location:test.php");


?>


