/// @description Avanza a la siguiente escena
// Puede escribir su código en este editor

if (global.historia!=false) {
	escala = 1
	if (instance_exists(obj_alfa_historia)){
		obj_alfa_historia.aumentar_alfa = true
		obj_alfa_historia.reducir_alfa=false
	}
	
	/*
	// SI es la 'ultima escena se vuelve al menu
	if (global.historia==global.max_escenas) {
		room_goto(rm_menu)
	}	
	// Si no es la ultima escena, cambia de escena
	else {
		if (instance_exists(obj_alfa_historia)){
			obj_alfa_historia.aumentar_alfa = true
			obj_alfa_historia.reducir_alfa=false
		}
	}
	*/
}