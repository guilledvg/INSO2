<?php
			//session_start();

			$host_db = "localhost";
			$user_db = "root";
			$pass_db = "";
			$db_name = "inso2";			

			$conexion = new mysqli($host_db, $user_db, $pass_db, $db_name);

			if ($conexion->connect_error) {
			 die("La conexion falló: " . $conexion->connect_error);
			}

			$username = $_POST['form_user'];
			$password = $_POST['form_pass'];
			 
			$sql = "SELECT privilegios FROM clientes WHERE (clientes.DNI = '$username' AND clientes.Contraseña = '$password')";
			$result = $conexion->query($sql);
			$row=$result->fetch_array(MYSQLI_ASSOC);
			if(empty($row)){
				//$sql = "SELECT privilegios FROM empleados WHERE (empleados.DNI = '$username' AND empleados.Contraseña = '$password')";
				//$result=$conexion->query($sql);
				//$row=$result->fetch_array(MYSQLI_ASSOC);
				//if(empty($row)){
					echo "BAD_USERNAME";
				//}else{
				//	echo 'usuarioInicio.html';
				//}
			}else{
			 	echo 'clienteInicio.html';
			}

			//mysqli_close($conexion); 
 ?>
