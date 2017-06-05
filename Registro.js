function registro(){
	
	var nombre = document.getElementById("form_nombre").value;
	var dni = document.getElementById("form_dni").value;
	var edad = document.getElementById("form_edad").value;	
	var correo = document.getElementById("form_correo").value;
	var contrasena = document.getElementById("form_contrasena").value;
	var direccion = document.getElementById("form_direccion").value;	

	var req = new XMLHttpRequest();
	req.onreadystatechange=function(){
		if(req.readyState==4){		
		}
	}
	
	req.open("POST", 'Registro.php', true);
	req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	req.send('form_nombre='+nombre+'&form_dni='+dni+'&form_edad='+edad+'&form_correo='+correo+'&form_contrasena='+contrasena+'&form_direccion='+direccion);
}
function registroDNI(){
	
	var dni = document.getElementById("form_dni").value;	

	var req = new XMLHttpRequest();
	req.onreadystatechange=function(){
		if(req.readyState==4){		
		}
	}
	
	req.open("POST", 'altaBaja.php', true);
	req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	req.send('form_dni='+dni);
}
function eliminarDNI(){
	
	var dni = document.getElementById("form_dni").value;	

	var req = new XMLHttpRequest();
	req.onreadystatechange=function(){
		if(req.readyState==4){		
		}
	}
	
	req.open("POST", 'darBaja.php', true);
	req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	req.send('form_dni='+dni);
}
function loguearse(){
	var us = document.getElementById("form_user").value;	
	var pas = document.getElementById("form_pass").value;

	var req = new XMLHttpRequest();
	req.onreadystatechange=function(){
		if(req.readyState==4){	
			if (req.responseText == 'BAD_USERNAME'){
				alert('error en login');
			}else {
				window.location = req.responseText;
			}
		}
	}
	alert("LLego");
	req.open("POST", 'loginINSO.php', true);
	req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	req.send('form_user='+us+'&form_pass='+pas);
}
