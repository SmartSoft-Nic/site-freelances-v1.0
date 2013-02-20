<?php
include 'conexion.php';
/**
 * @author freelances
 *Clase para el manejo de los Menus
 */
class MenuServices{	
	/**
	 * Obtenemos los Menus de Cabeceras
	 * @return $dao Objeto PDO.
	 */
	static function getParentMenu($openSession){
// 		$openSession = null;
		$consulta = 'select * from menline_parent order by order_line';
		try {
// 			$openSession = managedConnection::openConnection();
				$dao =  $openSession->query($consulta);
				//Retornamos la lista de Objetos
// 			managedConnection::closeConnection($openSession);
			return ($dao);
		} catch (PDOException $exception) {
			echo $exception->getMessage();
		}
	}
	
	/**
	 *@param $parentMenu elemento MenuPadre
	 *Obtenemos los Menu Hijos
	 *@return 
	 */
	static function getChildMenu($parentMenu, $openSession){
	 $consulta = 'select * from menline_child where menu_parent =?';
// 	 $openSession =null;
	 	try {
// 	 		$openSession = managedConnection::openConnection();
	 			$varPrepared = $openSession->prepare($consulta);
	 			$preparedExec = $varPrepared->execute(array($parentMenu));
	 			$result = $varPrepared->fetchAll();
// 	 		managedConnection::closeConnection($openSession);
	 		return ($result);
	 	} catch (PDOException $e) {
	 		$e->getTrace();
	 	}
	}
}

?>
