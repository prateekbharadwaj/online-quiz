<?php

session_start();
if(isset($_POST['logout']))
{

	 session_unset();
	header("Location:thank.php");
}
else
{

	header("Location:signup.php");
}

?>