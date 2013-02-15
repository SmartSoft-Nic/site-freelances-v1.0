<?php
/**
 * Freelance_conexion v1.0
 * Clase que maneja la conexion Mysql, php
 * Definimos las constantes
 * @autor:efjeibi_01
 * */
//Se opto por seleccionar la API PDO para la conexion puesto que la API mysql ya se declaro Obsoleta.
//DNS: Conexion mediante controlador debe seguir la siguiente sintaxis. mysql:dbname=nombre_de_bd;host=127.0.0.1
  class managedConnection{
  	//Variables de Configuracion constante
	const dsnAddres="mysql:dbname=webpage;127.0.0.1";
	const user = "root";
	const passwd="admin";
	
	/**
	 * Abrimos la conexion de la base de Datos.
	 * @return (bd) en caso de no haber problemas en la conexion
	 * */
	static function openConnection(){
		$configdsn = self::dsnAddres;
		$usuario = self::user;
		$contrasena = self::passwd;
		//Capturamos excepcion en  caso de que exista algun error en la conexion
		try {
			$conection = new PDO($configdsn, $usuario, $contrasena);
			echo "Conexion Establecida Satisfactoriamente";
			return($conection);
		} catch (PDOException $e) {
			echo "hubo un fallo en la Conexion:" +$e->getMessage();
		}
	}
	/**
	 * Cerramos la Conexion 
	 * @param PDO $connection
	 */
	static function closeConnection($connection){
	//Verificamos que la conexion se encuentre Abierta
	if(isset($connection)){
		//Cerramos la conexion
		$connection=null;
		echo "Conexion Cerrada Satisfactoriamente";		
	}
	}
}
?>