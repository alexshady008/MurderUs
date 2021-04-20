function src_desconectar_jugador(argument0) {
	var idJugadorRecibido = argument0

	for( i=0 ; i<ds_list_size(global.jugadores_partida_online) ; i++ ){
	
		var jugadorMap = ds_list_find_value(global.jugadores_partida_online,i)
		var idJugador = real(ds_map_find_value(jugadorMap,"idLocal"))

		if (idJugador == idJugadorRecibido){
			var jugador = real(ds_map_find_value(jugadorMap,"idObjeto"))
			if (instance_exists(jugador)){
				instance_create_depth(jugador.x,jugador.y,-45,obj_toast_desconexion)
				instance_destroy(jugador) 
			}
			ds_map_destroy(jugadorMap)
			ds_list_delete(global.jugadores_partida_online,i)
		}
	
	}



}
