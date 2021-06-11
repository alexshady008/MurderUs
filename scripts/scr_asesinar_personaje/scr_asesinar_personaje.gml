function scr_asesinar_personaje(argument0, argument1) {
	var id_pers_asesinado = argument0
	var id_pers_asesino = argument1

	var mapaDatos = ds_map_create()
	var bufferDatos = buffer_create(32, buffer_grow, 1)

	ds_map_add(mapaDatos,"mensaje","AsesinarJugador")
	ds_map_add(mapaDatos,"idJugador_asesinado",id_pers_asesinado)
	ds_map_add(mapaDatos,"idJugador_asesino",id_pers_asesino)

	buffer_seek(bufferDatos,buffer_seek_start,0)
	buffer_write(bufferDatos,buffer_text,json_encode(mapaDatos))
	var tamanio = buffer_tell(bufferDatos)

	network_send_udp_raw(global.cliente,global.ipServidor,global.puerto,bufferDatos,tamanio)

	ds_map_destroy(mapaDatos)
	buffer_delete(bufferDatos)



}
