function scr_conectar_a_sala(argument0) {
	var id_sala = argument0

	var mapaDatos = ds_map_create()
	var bufferDatos = buffer_create(64, buffer_grow, 1)

	ds_map_add(mapaDatos,"mensaje","ConectarASala")
	ds_map_add(mapaDatos,"idSala",id_sala)
	ds_map_add(mapaDatos,"idJug",global.idLocal)
	ds_map_add(mapaDatos,"nombreJug",global.nombre)
	ds_map_add(mapaDatos,"skinJug",global.skinElegido)
	ds_map_add(mapaDatos,"prendaJug",global.prendaElegida)
	ds_map_add(mapaDatos,"accesorioJug",global.accesorioElegido)
	ds_map_add(mapaDatos,"sombreroJug",global.sombreroElegido)
	ds_map_add(mapaDatos,"mascotaJug",global.mascotaElegida)
	ds_map_add(mapaDatos,"admin",global.administrador)

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
