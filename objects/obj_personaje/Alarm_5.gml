/// @description Envia datos del  jugador
// Puede escribir su código en este editor

//if ( global.jugabilidad==true ){
if ( enviar_datos==true ){
	enviando_datos = true
	
	var mapaDatos = ds_map_create()
	var bufferDatos = buffer_create(64, buffer_grow, 1)
	
	ds_map_add(mapaDatos, "mensaje", "datosJugador")
	//ds_map_add(mapaDatos, "posX", string(x))
	//ds_map_add(mapaDatos, "posY", string(y))
	ds_map_add(mapaDatos, "posX", string(phy_position_x))
	ds_map_add(mapaDatos, "posY", string(phy_position_y))
	if (direccion!=noone) ds_map_add(mapaDatos, "direccion", string(direccion))
	else ds_map_add(mapaDatos, "direccion", string(404))
	ds_map_add(mapaDatos, "muerte", string(muerto))
	ds_map_add(mapaDatos, "oculto", escondido)
	//if (complice) 
	ds_map_add(mapaDatos, "limpiandoRastro", limpiando_rastro)
	buffer_seek(bufferDatos, buffer_seek_start, 0)
	buffer_write(bufferDatos, buffer_text, json_encode(mapaDatos))
	var bufferTamanio = buffer_tell(bufferDatos)
	
	network_send_udp_raw(global.cliente, global.ipServidor, global.puerto, bufferDatos, bufferTamanio)
	
	ds_map_destroy(mapaDatos)
	buffer_delete(bufferDatos)
	
	//var tiempo = global.latencia*global.step_delta;
	/*var tiempo = global.latencia/global.step_delta;
	if (tiempo>1) alarm[5] = tiempo
	else alarm[5] = global.latencia*/
	
	if (global.latencia>=1) alarm[5] = global.latencia
	else alarm[5] = 3
	
	//show_debug_message("envia datos del jugador")
	
}
else {
	enviando_datos = false
}