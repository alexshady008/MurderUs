 /// @description Destruye los botones
// Puede escribir su código en este editor

// Elimina los botones del login
instance_destroy(eliminarCampo)
instance_destroy(unirse)


if (guardado){
	if !(global.unirse_discord) {
		global.unirse_discord = true
		ini_open("comandos.ini")
			ini_write_real("jugadorDatos","unirse_discord",global.unirse_discord)
		ini_close()
	}
}

obj_contr_menu.alarm[4] = 5   //Alarma que desbloquea el menu