function scr_contr_skin_jugador_reportado() {
	var skin = noone
	for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
		var jugador_map = ds_list_find_value(global.jugadores_lista,i)
		var id_jugador = real(ds_map_find_value(jugador_map,"clienteId"))
		if (id_jugador == global.id_jugador_reportado){
			skin = real(ds_map_find_value(jugador_map,"clienteSkin"))
		}
	}
						
	return skin


}
