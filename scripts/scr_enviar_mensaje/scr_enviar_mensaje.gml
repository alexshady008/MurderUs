function scr_enviar_mensaje() {
	var mapaDatos = ds_map_create()
	var bufferDatos = buffer_create(64, buffer_grow, 1)

	ds_map_add(mapaDatos,"mensaje","EnviarMensaje")
	ds_map_add(mapaDatos,"idJugador",global.idLocal)
	//ds_map_add(mapaDatos,"mensajero",global.nombre)
	ds_map_add(mapaDatos,"msg",global.mensaje) 
	/*ds_map_add(mapaDatos,"skinJug",global.skinElegido)
	ds_map_add(mapaDatos,"colorJug",global.colorElegido)
	ds_map_add(mapaDatos,"accesorioJug",global.accesorioElegido)
	ds_map_add(mapaDatos,"sombreroJug",global.sombreroElegido)
	*/
	buffer_seek(bufferDatos,buffer_seek_start,0)
	buffer_write(bufferDatos,buffer_text,json_encode(mapaDatos))
	var tamanio = buffer_tell(bufferDatos)

	var enviar = network_send_udp_raw(global.cliente,global.ipServidor,global.puerto,bufferDatos,tamanio)
	if ( enviar < 0 ) {
		scr_popup_error_conectar_servidor()
	}

	ds_map_destroy(mapaDatos)
	buffer_delete(bufferDatos)


	//show_message_async(global.mensaje)
}
