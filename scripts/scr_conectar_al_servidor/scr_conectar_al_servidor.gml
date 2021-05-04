function scr_conectar_al_servidor() {
	var mapaDatos = ds_map_create()
	var bufferDatos = buffer_create(32, buffer_grow, 1)

	ds_map_add(mapaDatos,"mensaje","conectarJugador")
	ds_map_add(mapaDatos,"clienteId",string(global.idLocal))
	ds_map_add(mapaDatos,"nombre",global.nombre)
	ds_map_add(mapaDatos,"skin",global.skinsElegido)

	buffer_seek(bufferDatos,buffer_seek_start,0)
	buffer_write(bufferDatos,buffer_text,json_encode(mapaDatos))
	var tamanio = buffer_tell(bufferDatos)

	var enviar = network_send_udp_raw(global.cliente,global.ipServidor,global.puerto,bufferDatos,tamanio)
	if ( enviar < 0 ) {
		scr_popup_error_conectar_servidor()
	}

	ds_map_destroy(mapaDatos)
	buffer_delete(bufferDatos)



}
