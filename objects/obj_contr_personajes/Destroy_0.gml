/// @description Destruye los botones
// Puede escribir su código en este editor

// Elimina los botones del login
instance_destroy(btnPersonaje)
instance_destroy(btnCambiarPers_der)
instance_destroy(btnCambiarPers_izq)
instance_destroy(eliminarCampo)
instance_destroy(aceptarCampo)
if (instance_exists(obj_personaje_muestra)) instance_destroy(obj_personaje_muestra)

if !(guardado){
	global.skinsElegido = skinInicial
}
else {
	ini_open("comandos.ini")
		ini_write_real("jugadorDatos","skin",global.skinsElegido)
	ini_close()
}

obj_contr_menu.alarm[4] = 5   //Alarma que desbloquea el menu