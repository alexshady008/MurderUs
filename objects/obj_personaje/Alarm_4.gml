/// @description Envia Inicialmente datos del personaje al servidor
// Puede escribir su código en este editor

var mapaDatos = ds_map_create()
var bufferDatos = buffer_create(32, buffer_grow, 1)
	
ds_map_add(mapaDatos, "mensaje", "datosXYJugador")
ds_map_add(mapaDatos, "posX", string(x))
ds_map_add(mapaDatos, "posY", string(y))
//show_debug_message("Pos X " + string(x) + " ,Pos Y " + string(y))
	
buffer_seek(bufferDatos, buffer_seek_start, 0)
buffer_write(bufferDatos, buffer_text, json_encode(mapaDatos))
var bufferTamanio = buffer_tell(bufferDatos)
	
network_send_udp_raw(global.cliente, global.ipServidor, global.puerto, bufferDatos, bufferTamanio)
	
ds_map_destroy(mapaDatos)
buffer_delete(bufferDatos)