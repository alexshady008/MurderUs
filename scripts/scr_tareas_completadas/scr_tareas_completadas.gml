function scr_tareas_completadas() {
	if (global.modo_jugabilidad==1)
	{
		var mapaDatos = ds_map_create()
		var bufferDatos = buffer_create(32, buffer_grow, 1)
		ds_map_add(mapaDatos,"mensaje","TareasCompletadas")
		buffer_seek(bufferDatos,buffer_seek_start,0)
		buffer_write(bufferDatos,buffer_text,json_encode(mapaDatos))
		var tamanio = buffer_tell(bufferDatos)
		network_send_udp_raw(global.cliente,global.ipServidor,global.puerto,bufferDatos,tamanio)
		ds_map_destroy(mapaDatos)
		buffer_delete(bufferDatos)
	}
	else if (global.modo_jugabilidad==2)
	{
		///CODIFICAR
	}
}
