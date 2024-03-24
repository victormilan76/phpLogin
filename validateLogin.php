<?php
   //cadena de conexion
   include("conection.php");
   $con=conectarse();
   
   $user = $_POST['user'];
   $password = $_POST['password'];

	$query = "SELECT US_ID_BI,US_NAME_VC,US_USER_VC,US_PASSWORD_VC,US_DATE_CREATION_DT,US_ROL_BT,US_STATUS_BT FROM USER where US_USER_VC='$user' and US_PASSWORD_VC='$password'";
	$result = mysqli_query($con,$query);
	if(!$result){die("query Failed"); }
	$row = mysqli_fetch_array($result);

   if ($row['US_USER_VC']==$user && $row['US_PASSWORD_VC']==$password)
      echo "<script> window.location.href='home.html';</script>";
   else
      echo "<script> window.location.href='index.html';</script>";
   
?>
