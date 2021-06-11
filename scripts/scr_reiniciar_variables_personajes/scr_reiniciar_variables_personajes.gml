function scr_reiniciar_variables_personajes() {
	global.id_jugador_reportado = noone  
	global.id_jugador_informador = noone  
	global.tarea_saboteada = noone
	global.tarea_saboteada_x = noone
	global.tarea_saboteada_y = noone
	global.asesinar = global.tiempoEsperaAsesinar
	global.usar_btn_emergencia = global.tiempoEsperaAsesinar
	global.sabotear = true
	global.contadorDiscusion = global.tiempo_votacion
	global.comenzarVotacion = 30
	id_jugador_elegido = noone
	tipo_jugador_elegido = noone
	nombre_jugador_elegido = noone
	skin_jugador_elegido = noone

	if (instance_exists(obj_personaje_muerto)) instance_destroy(obj_personaje_muerto)

	if (instance_exists(obj_personaje)){
		with(obj_personaje){
			phy_position_x = idContrPos.x
			phy_position_y = idContrPos.y
			escondido=false
		}
		//obj_personaje.x = obj_boton_emergencia.x
		//obj_personaje.y = obj_boton_emergencia.y
	}





}
