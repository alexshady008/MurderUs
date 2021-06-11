function scr_crear_jugadores() {

	var cantJugadores = ds_list_size(global.jugadores_partida_online)
	//show_debug_message("cantJugadores: " + string(cantJugadores) )


	for( i=0 ; i<cantJugadores; i++ ){
		//show_debug_message(i)
		var contrPos = instance_find(obj_contr_pos_personaje, i)
		//show_debug_message(contrPos)
		var xPos = contrPos.x
		var yPos = contrPos.y
	
	#region Almacena los datos de los jugadores en variables
			var jugadorMap = ds_list_find_value(global.jugadores_partida_online,i)
			var idJugadorServer = ds_map_find_value(jugadorMap,"id")
			var nombreJugador = ds_map_find_value(jugadorMap,"nombre")
			var skin = real(ds_map_find_value(jugadorMap,"skin"))
			var calificacion = real(ds_map_find_value(jugadorMap,"calificacion"))
			var idJugador = real(ds_map_find_value(jugadorMap,"idLocal"))
	#endregion
	
	#region Creal al jugador o a una entidad
			if ( idJugador == global.idLocal ){
				var jugador = instance_create_layer(xPos, yPos,"Personajes", obj_personaje)
				jugador.jugador = true
				//jugador.alarm[4] = room_speed/2  // Activa la alarma que inicializa variables, particulas y envia pos inicial
				jugador.alarm[4] = 1  // Activa la alarma que inicializa variables, particulas y envia pos inicial
				global.jugador = jugador
				contrPos.ocupado = true
				contrPos.persOnline = jugador
			} else {
				var jugador = instance_create_layer(xPos, yPos,"Personajes", obj_entidad_online)
				contrPos.ocupado = true
				contrPos.persOnline = jugador
			}
			//ds_list_add(global.jugadoresVivos,jugador)
	#endregion
	
	#region  Agrega los datos a las variables del jugador
			jugador.idServer = idJugadorServer
			jugador.nombre = nombreJugador
			jugador.skins = skin
			jugador.idJugador = idJugador
			jugador.alarm[0] = 1 // Alarma que cambia las skins
	#endregion
	
	#region Crea o actualiza su id del objeto
			var idObjeto = ds_map_find_value(jugadorMap,"idObjeto")
			if is_undefined(idObjeto){
				ds_map_add(jugadorMap,"idObjeto",jugador)
			} else {
				ds_map_delete(jugadorMap,"idObjeto")
				ds_map_add(jugadorMap,"idObjeto",jugador)
			}
	#endregion
	
	

	
	}


}
