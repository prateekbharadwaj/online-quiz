<?php

session_start();


if(isset($_POST["1"]))
{
	$name=$_POST["name"];
	$email=$_POST["email1"];
	$dob=$_POST["dob"];
	$gender=$_POST["gender"];
	$mobile=$_POST["mobile"];
	$password=$_POST["password"];
	$branch=$_POST["branch"];
	$insti=$_POST["institute"];

	$con=mysqli_connect("localhost","root","","oq") or die("database not found");
$query= "insert into registration set name='$name', email='$email', 
    dob='$dob', mobile='$mobile', branch='$branch',gender='$gender', password='$password', institute='$insti' ";
$x=	mysqli_query($con,$query) or die(header("Location:signup.php?err=1"));
header("Location:success.php?err=1");
}

?>

