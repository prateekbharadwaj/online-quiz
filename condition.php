<?php
session_start();
if(!isset($_SESSION['login']))
header("Location:signup.php?err12=1");


	
?>

<html lang="en">
<head>

  <title >Online Exam</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="file/bootstrap-4.2.1-dist/css/bootstrap.min.css">
  <script src="file/jquery.min.js"></script>
  <script src="file/bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
  <script src="file/myjquery.js"></script>
</head>

<body>

<div class="container-fluid jumbotron ;"  style="background:rgba(76, 175, 80, 0.1)">
	<div class="row">
		<div class="col-3">
		<h1 style="font-size: 30px; text-align: center; margin-top:50px; font-weight: bolder">Welcome </h1>
    <h2 style="color: orange;margin-top: 20px; margin-left: 100px; font-weight: bold"><?php echo $_SESSION['name']; ?></h2>

		</div>
<div class="col-6">
	 <p class="text" style="font-size: 60px; text-align: center; margin-top:10;font-weight: bolder">Online Quiz</p>
</div>
<div class="col-3">
	<form method="post" action="logout.php"> 
<input type="submit" name="logout" class="btn btn-success" style="margin-top: 10px;" value="Logout">	</input>
</form>
</div>

</div></div>
<div class="container">
  <div class="card-deck">
    <div class="card" style="background:rgba(76, 175, 80, 0.1)">
      <div class="card-body text-center">
        <h1 class="card-text" style="color: black;text-align:left">Instruction For Exam</h1>
        <h4 class="card-text" style="color: black;text-align:left;">1. This is a Multiple choice Test & contains 10 questions to be answered in 10 minutes.</h4>
        <h4 class="card-text" style="color: black;text-align:left;">2. Each Question has 1 mark for right answer.</h4>
        <h4 class="card-text" style="color: black;text-align:left;">3. Click the <b>Start Test</b> below to start.</h4>
       
       <h4 class="card-text" style="color: black;text-align:left;">4. One after another questions with its options will appear.</h4>

       <h4 class="card-text" style="color: black;text-align:left;">5. You can submit before time but, you can't appear again.</h4>
       <form method="post" action="test.php">
       <input  type="submit" class="btn btn-success" value="Start Test"></input>
   </form>
      </div>
    </div>
</div>
   

</div>
</body>
</html>