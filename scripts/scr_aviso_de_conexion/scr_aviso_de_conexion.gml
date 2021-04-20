function scr_aviso_de_conexion() {
	var mapaDatos = ds_map_create()
	var bufferDatos = buffer_create(32, buffer_grow, 1)

	ds_map_add(mapaDatos,"mensaje","jugadorConectado")

	buffer_seek(bufferDatos,buffer_seek_start,0)
	buffer_write(bufferDatos,buffer_text,json_encode(mapaDatos))
	var tamanio = buffer_tell(bufferDatos)

	var enviar = network_send_udp_raw(global.cliente,global.ipServidor,global.puerto,bufferDatos,tamanio)

	ds_map_destroy(mapaDatos)
	buffer_delete(bufferDatos)

	// Si no se envio el mensaje, se desconecta del juego
	if (enviar<0){
		global.conectado = false
		global.tipoDesconexion = "descInternet"
		scr_publicidad()
		room_goto(rm_menu2) 
	}


	/*if ( enviar < 0 ) {
		scr_popup_error_conectar_servidor()
		global.conectado = false
		alarm[9] = 200  //Alarma para salir del juego
	}
	else {
		global.conectado = true
	}*/




}
