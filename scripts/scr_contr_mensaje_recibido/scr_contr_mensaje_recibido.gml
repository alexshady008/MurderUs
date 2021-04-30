function scr_contr_mensaje_recibido(mapaDatos) {
	
	if (global.musica) audio_play_sound(snd_pop,100,false)
	if (instance_exists(obj_btn_chat) and global.chat==false and obj_btn_chat.notificacion==false) obj_btn_chat.notificacion = true
	
	//var nombre = ds_map_find_value(mapaDatos,"mensajero")
	var id_jugador_mensajero = real(ds_map_find_value(mapaDatos,"idJugador"))
	var msg = ds_map_find_value(mapaDatos,"msg")
	var nombre = noone
	var color = noone
	var skin = noone
	var accesorio = noone
	var sombrero = noone
	
	for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
		var jugador = ds_list_find_value(global.jugadores_lista,i)
		var jugador_id = real(ds_map_find_value(jugador,"clienteId"))
		if (jugador_id == id_jugador_mensajero) {
			nombre = ds_map_find_value(jugador,"clienteNombre")
			color = real(ds_map_find_value(jugador,"clienteColor"))
			skin = real(ds_map_find_value(jugador,"clienteSkin"))
			accesorio = real(ds_map_find_value(jugador,"clienteAccesorio"))
			sombrero = real(ds_map_find_value(jugador,"clienteSombrero"))
		}	
	}
	
	//show_debug_message(msg)
	/*var skin = ds_map_find_value(mapaDatos,"skin")
	var color = ds_map_find_value(mapaDatos,"color")
	var accesorio = ds_map_find_value(mapaDatos,"accesorio")
	var sombrero = ds_map_find_value(mapaDatos,"sombrero")*/
	
	var mensaje_map = ds_map_create()
	//ds_map_add(mensaje_map,"skin",skin)
	//ds_map_add(mensaje_map,"color",color)
	// Guarda el skin
	if (is_undefined(skin) or skin==noone) ds_map_add(mensaje_map,"skin","0")
	else ds_map_add(mensaje_map,"skin",skin)
	// Guarda el color
	if (is_undefined(color) or color==noone) ds_map_add(mensaje_map,"color","0")
	else ds_map_add(mensaje_map,"color",color)
	// Guarda el accesorio
	if (is_undefined(accesorio) or accesorio==noone) ds_map_add(mensaje_map,"accesorio","0")
	else ds_map_add(mensaje_map,"accesorio",accesorio)
	// Guarda el sombrero
	if (is_undefined(sombrero) or sombrero==noone) ds_map_add(mensaje_map,"sombrero","0")
	else ds_map_add(mensaje_map,"sombrero",sombrero)
	//Guarda el nombre
	if (is_undefined(nombre) or nombre==noone) ds_map_add(mensaje_map,"nombre","")
	else ds_map_add(mensaje_map,"nombre",nombre)
	//ds_map_add(mensaje_map,"nombre",nombre)
	ds_map_add(mensaje_map,"mensaje",msg)
	ds_list_insert(global.mensajes_lista,0,mensaje_map)


}
