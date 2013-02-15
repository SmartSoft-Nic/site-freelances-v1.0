<?php
//Incluimos la Conexion
	include 'sqlUtil/conexion.php';
//Abrimos la conexion
$objectConnection = managedConnection::openConnection();
//Cerramos la conexion
managedConnection::closeConnection($objectConnection);
?>