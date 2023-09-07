<?php

//Definición de variables
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "employees";

// Se crea conexión a la BD

$conexion = new mysqli($servername, $username, $password, $dbname);

//Verificar conexión

if($conexion->connect_error){
    die("Error de conexión a la base de datos: " . $conexion->error);

}

?>