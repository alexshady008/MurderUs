function scr_crear_sala() {
	var mapaDatos = ds_map_create()
	var bufferDatos = buffer_create(64, buffer_grow, 1)

	ds_map_add(mapaDatos,"mensaje","CrearSala")
	//ds_map_add(mapaDatos,"idJug",global.idLocal)
	//ds_map_add(mapaDatos,"nombreJug",global.nombre)
	//ds_map_add(mapaDatos,"skinJug",global.skinsElegido)
	//ds_map_add(mapaDatos,"admin",true)
	ds_map_add(mapaDatos,"idSala",global.idSala)
	ds_map_add(mapaDatos,"nombreSala",global.nombre_sala)
	ds_map_add(mapaDatos,"tipoSala",global.tipo_sala)
	ds_map_add(mapaDatos,"impostoresSala",global.cant_impostor_sala)
	ds_map_add(mapaDatos,"detectivesSala",global.cant_detective_sala)
	ds_map_add(mapaDatos,"complicesSala",global.cant_complice_sala)
	ds_map_add(mapaDatos,"jugadoresSala",global.cant_jugadores_sala)
	ds_map_add(mapaDatos,"jugadoresMinSala",global.cant_min_jugadores_sala)
	ds_map_add(mapaDatos,"maxTareasSala",global.max_tareas)
	ds_map_add(mapaDatos,"tipoMapaSala",global.tipo_mapa_sala)
	if (global.tipo_mapa_sala=="personalizado") ds_map_add(mapaDatos,"datosMapaSala",global.datos_nivel_pers)
	ds_map_add(mapaDatos,"tiempoDiscusion",global.tiempo_votacion)

	buffer_seek(bufferDatos,buffer_seek_start,0)
	buffer_write(bufferDatos,buffer_text,json_encode(mapaDatos))
	var tamanio = buffer_tell(bufferDatos)

	var enviar = network_send_udp_raw(global.cliente,global.ipServidor,global.puerto,bufferDatos,tamanio)

	ds_map_destroy(mapaDatos)
	buffer_delete(bufferDatos)

	// Si no se envio el mensaje, se desconecta del juego
	if ( enviar < 0 ) {
		scr_popup_error_conectar_servidor()
		global.jugabilidad = true
	}





}
