<html lang="en">
<head>
<style>

    
    </style>
  <title>online exam</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="file/bootstrap-4.2.1-dist/css/bootstrap.min.css">
  <script src="file/jquery.min.js"></script>
  <script src="file/bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
  <script src="file/myjquery.js"></script>
<!-- <script>
   function func()
               {
                            //student name validation
                             var x=document.forms['form1']['name'].value;
                            var i;
                           
                               
                               for(i=0;i<x.length;i++)
                               {
                                      ch=x.charAt(i);
                                    if(!(ch>='a' && ch<='z') && !(ch>='A' && ch<='Z') && !(ch==' '))
                                    {
                                        alert("Invalid Student name");
                                        return false;
                                    }
                               

                               }

                     var e=document.forms['form1']['email1'].value;                  
                               if(e.length==0)
                                 {
                                     alert("Please Enter your Email");
                                     return false;
                                 }
                                 if(e.indexOf("@")==0)
                                     {
                                         alert('please enter valid email');
                                           return false;
                                            }
                                  if(((e.charAt(e.length-4))!='.') && ((e.charAt(e.length-3))!='.'))
                                    {
                                             alert('please enter valid email');
                                             return false;
                                    }

                      
                          


                            // Mobile Number Validation
                             var xyz=document.forms['form1']['mobile'].value; 
                                if(xyz.length==0)
                                 {
                                    alert("Please Enter Mobile number");
                                    return false;
                                 } 
                                 if(xyz.length<10 || xyz.length>10)
                                 {
                                   alert("Please Enter ten digit Mobile number");
                                   return false;
                                 }
                                  if(xyz.charAt(0)<=7)
                                {
                                    alert("Enter valid Mobile number");
                                    return false;
                                 }  
                 

                      var pass1=document.forms['form1']['password'].value;
                                  if(pass1.length==0)
                                  {
                                      alert("Please Enter Password");
                                      return false; 
                                  }
                                  if(pass1.length<8)
                                     {
                                            alert('enter atleast 8 digit or letter');
                                            return false;
                                         }

                      
                             // email validation                    }   
                            
                         
                                                  
                }

 </script> -->



 <div class="container-fluid" style="height:100px;background-color: #004040">
  <h1 style="text-align:center;padding-top: 20px;color: white">Online Examination Portal</h1>

</div>
</head>
<body style="background-image: url('abcd.jpg'); border: 1px solid #ddd;
      border-radius: 4px;
      padding: 5px;
      max-width: 100%;
      height: auto;
      background-repeat: no-repeat;
      background-size: auto">
<div style="width: 100%;
height: 100%;
display: flex;
  justify-content: center;
  padding-top: 200px" >
    <form method="post" action="signin.php"> 
        <input type="submit" name="signin" class="btn btn-warning" style="display: flex;
     justify-content: center;
     color:black;
    align-items: center;
    height: 120px;
    width: 150px;
    margin-right: 250px;
    font-size: xx-large;
    font-weight:bolder;

      position: relative;
      border: 2px solid yellow;" value="Sign In">	</input>
    </form>


    <form method="post" action="signup.php"> 
        <input type="submit" name="signup" class="btn btn-warning" style="display: flex;
    justify-content: center;
    align-items: center;
    height: 120px;
    width: 150px;
    color:black;
    font-size: xx-large;
    font-weight:bolder;
    
      position: absolute;
      margin-right: 250px;
      border: 2px solid yellow;" value="Sign Up">	</input>
    </form>
  </div>


</body>