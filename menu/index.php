	<nav id="mainMenu">
	<?php
		//Incluimos la Conexion
	include 'menuServices.php';
	//Abrimos la Session
	$sessionBd = managedConnection::openConnection();
	echo '<ul id="firstLevel">';
		foreach (MenuServices::getParentMenu($sessionBd) as $menuPadre){
			echo '<li>';
					echo '<a href="#">';
					echo $menuPadre['label'];
					echo '</a>'	;
					recursiveMenu($menuPadre['code_menu'],$sessionBd);
			echo '</li>';
			
		}
	echo '</ul>';

	function recursiveMenu($menuPadre,$openSession){
		$arregloMenu =  MenuServices::getChildMenu($menuPadre, $openSession);
		if(!empty($arregloMenu)){
			echo '<ul class="subLevel">';
			foreach ($arregloMenu as $menuRecursivo){
				echo '<li>';
				echo '<a href="#">';
					echo $menuRecursivo['label'];
					echo '</a>';
					recursiveMenu($menuRecursivo['code_menu'], $openSession);
				echo '</li>';
				}
			echo '</ul>';
		}
	
	}
	//Cerramos la session	
	managedConnection::closeConnection($sessionBd);
	?>
</nav>