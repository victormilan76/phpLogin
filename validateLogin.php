<?php
    //llamamos a la cadena de conexion
    include("conection.php");
    $con=conectarse();
   
   $user = $_POST['user'];
	$password = $_POST['password'];
   
   //echo $user."-".$password;
   
	$query = "SELECT ID_USER,NAME,USER,PASSWORD,DATE_CREATION,ROL,STATUS FROM USER where USER='$user' and PASSWORD='$password'";
	$result = mysqli_query($con,$query);
	if(!$result){die("query Failed"); }
	$row = mysqli_fetch_array($result);

   if ($row['USER']==$user && $row['PASSWORD']==$password)
	{
      echo "<script> window.location.href='home.html';</script>";
   }
   else
   {
      echo "<script> window.location.href='index.html';</script>";
   }
?>