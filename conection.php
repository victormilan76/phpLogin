<?php
  //cadena de conexion
  function conectarse()
  {
    $host = "localhost";
    $user = "root";
    $pass = "";
    $dataBase = "BD_Login";

    $link = mysqli_connect($host,$user,$pass,$dataBase) or die ("No se pudo conectar a la base de datos: ".mysqli_connect_error());
    return $link;
  }
?>