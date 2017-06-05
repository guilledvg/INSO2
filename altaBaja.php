<?php
	if(!$_POST){
		$status = 'error';
		$data = json_decode($data, true);
		$msg = 'No se recibieron datos';
	}else{
		$dni = $_POST['form_dni'];
	
		if(!isset($status)){
			$link = new PDO('mysql:host=localhost;dbname=inso2', 'root', '');

			$sql = '';
			$sql .= "('".$dni."'), ";
			$sql_insertar = "INSERT INTO clientes ( DNI) 
			VALUES ". $sql;
		
			$sql_insertar = substr("$sql_insertar", 0, -2);
			$query= $link->query($sql_insertar);
				
			$status = 'success';
			$data   = null;
			$msg    = 'Se guardaron los datos de registro de conductores';
		}
	}
	
		$array_res = array(
			'status' => $status,
			'data' => $data,
			'message' => $msg
		);
		//echo json_encode($array_res);
		header('Location: Inicio.html');
		
?>
