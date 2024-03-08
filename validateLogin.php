<?php
    //llamamos a la cadena de conexion
    include("conection.php");
    $con=conectarse();
   
   $user = $_POST['user'];
	$password = $_POST['password'];
   
	$query = "SELECT ID_USER,NAME,USER_NAME,PASSWORD FROM USER where USER_NAME='$user' and PASSWORD='$password'";
	$result = mysqli_query($con,$query);
	if(!$result){die("query Failed"); }
	$row = mysqli_fetch_array($result);

   if ($row['USER_NAME']==$user && $row['PASSWORD']==$password)
	{
      echo "<script> window.location.href='home.html';</script>";
   }
   else
   {
      echo "<script> window.location.href='index.html';</script>";
   }
?>