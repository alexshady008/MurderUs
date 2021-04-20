/// @description Contr el alfa
// Puede escribir su código en este editor

// Reduce el alfa
if (reducir_alfa){
	if (alfa>0) alfa-=descr
	else {
		reducir_alfa=false
		//if (instance_exists(obj_contr_historia)) obj_contr_historia.alarm[0] = 1
	}	
}


//Aumenta el alfa y cambia de escena
if (aumentar_alfa){
	if (alfa<1) alfa+=aum
	else {
		aumentar_alfa = false
		reducir_alfa = true
		// Si no es la ultima escena, cambia de escena
		if (global.historia<global.max_escenas) {
			global.historia++
			if (instance_exists(obj_contr_historia)) {
				obj_contr_historia.posY_letras = room_height 
				obj_contr_historia.alarm[0] = room_speed/2
			}	
		}
		// SI es la 'ultima escena se vuelve al menu
		else {
			//room_goto(rm_menu)
			if (instance_exists(obj_contr_historia)) instance_destroy(obj_contr_historia)
		}
	}
}