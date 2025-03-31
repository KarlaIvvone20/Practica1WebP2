<?php
$host ='localhost';
$usuario ='root';
$password ='';
$base_datos ='sistema_web';

$conexion = new mysqli($host, $usuario, $password, $base_datos);

if($conexion->connect_error){
    die('Error de conexión:'. $conexion->connect_error);
}

if($_SERVER["REQUEST_METHOD"]=="POST"){
    $nombre_completo=$_POST['nombre_completo'];
    $fecha_nacimiento=$_POST['fecha_nacimiento'];
    $corre_electronico=$_POST['correo_electronico'];
    $contraseña=$_POST['contraseña'];   
}
$query ="INSERT INTO usuarios(nombre_completo, fecha_nacimiento, corre_electronico, contraseña) VALUES(?,?,?,?)";
$stmt = $conexion->prepare($query);
$stmt->bind_param('ssss', $nombre_completo, $fecha_nacimiento, $corre_electronico, $contraseña);
if($stmt->execute()){
    echo"Registro exitoso.";
    } else{
        echo"Error al registrarse:" .$conexion->error;
    }
$stmt->close();
$conexion->close();
?>