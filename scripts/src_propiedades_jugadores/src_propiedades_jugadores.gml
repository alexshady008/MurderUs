function src_propiedades_jugadores(argument0) {
	var jugadoresLista = argument0

	global.jugadores_partida_online = ds_list_create()

	for( i=0 ; i<ds_list_size(jugadoresLista) ; i++ ){
		var mapaJugador = ds_map_create()
		var jugadorLista = ds_list_find_value(jugadoresLista,i)
		for( j=0 ; j<ds_list_size(jugadorLista) ; j++ ){
			switch(j){
				case 0: 
					var idJugador = ds_list_find_value(jugadorLista,0)
					ds_map_add(mapaJugador,"id",idJugador)
				break;
				case 1: 
					var nombreJugador = ds_list_find_value(jugadorLista,1)
					ds_map_add(mapaJugador,"nombre",nombreJugador)
				break;
				case 2: 
					var skin = ds_list_find_value(jugadorLista,2)
					ds_map_add(mapaJugador,"skin",skin)
				break;
				case 3: 
					var calificacion = ds_list_find_value(jugadorLista,3)
					ds_map_add(mapaJugador,"calificacion",calificacion)
				break;
				case 4: 
					var idLocal = ds_list_find_value(jugadorLista,4)
					ds_map_add(mapaJugador,"idLocal",idLocal)
				break;
			}
		}
	
		ds_list_add(global.jugadores_partida_online,mapaJugador)
	}

	//return global.jugadores_partida_online


}
