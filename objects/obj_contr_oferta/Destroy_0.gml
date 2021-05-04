 /// @description Destruye los botones
// Puede escribir su código en este editor

// Elimina los botones del login
instance_destroy(eliminarCampo)
instance_destroy(calificar)


if (guardado){
	if !(global.regaloSkins) {
		global.skinsDesbloqueados = global.maxSkins
		global.regaloSkins = true
		ini_open("comandos.ini")
			ini_write_real("jugadorDatos","skinsDesbloqueados",global.skinsDesbloqueados)
			ini_write_real("jugadorDatos","regaloSkins",global.regaloSkins)
		ini_close()
		
		//Desbloquea a las mascotas
		for ( var j=0 ; j<=floor(global.max_mascotas/2) ; j++ ){
			if (global.mascota_bloqueada[j]) {
				global.mascota_bloqueada[j] = false 
				ini_open("comandos.ini")
				ini_write_real("jugadorDatos","mascota_bloqueada"+string(j),false)
				ini_close()
			}	
		}
	}
}

obj_contr_menu.alarm[4] = 5   //Alarma que desbloquea el menu