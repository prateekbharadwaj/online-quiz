<?php
session_start();
if(isset($_POST['2']))
{

$email=$_POST['email'];
$password=$_POST['password'];


$con=mysqli_connect("localhost","root","","oq") or die("server not found");

$q="DELETE FROM regd";
$d = mysqli_query($con,$q) or die("Database not cleard");
$query="select * from registration where email='$email'";
$x=mysqli_query($con,$query) or die("wrong query");
if(mysqli_num_rows($x)==0)
header("Location:signin.php?err1=1");
else
{
	$array=mysqli_fetch_array($x);
	if($array['password']=="$password")

	{
		$_SESSION['name']=$array['name'];
		$_SESSION['login']=$array['email'];
		$_SESSION['time']="600";
		header("Location:condition.php");

	}
	else
		header("Location:signin.php?err2=1");

}


}
else 
{

header("Location:signin.php?err12=1");

}
?>