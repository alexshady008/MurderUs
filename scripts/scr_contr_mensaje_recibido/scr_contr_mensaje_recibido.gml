function scr_contr_mensaje_recibido(argument0) {
	var mapaDatos = argument0

	if (global.musica) audio_play_sound(snd_pop,100,false)
	if (instance_exists(obj_btn_chat) and global.chat==false and obj_btn_chat.notificacion==false) obj_btn_chat.notificacion = true
	var nombre = ds_map_find_value(mapaDatos,"mensajero")
	var msg = ds_map_find_value(mapaDatos,"msg")
	//show_debug_message(msg)
	var skin = ds_map_find_value(mapaDatos,"skin")
	var color = ds_map_find_value(mapaDatos,"color")
	var accesorio = ds_map_find_value(mapaDatos,"accesorio")
	var sombrero = ds_map_find_value(mapaDatos,"sombrero")
	var mensaje_map = ds_map_create()
	ds_map_add(mensaje_map,"skin",skin)
	ds_map_add(mensaje_map,"color",color)
	if (is_undefined(accesorio)) ds_map_add(mensaje_map,"accesorio","0")
	else ds_map_add(mensaje_map,"accesorio",accesorio)
	if (is_undefined(sombrero)) ds_map_add(mensaje_map,"sombrero","0")
	else ds_map_add(mensaje_map,"sombrero",sombrero)
	//ds_map_add(mensaje_map,"sombrero",sombrero)
	ds_map_add(mensaje_map,"nombre",nombre)
	ds_map_add(mensaje_map,"mensaje",msg)
	ds_list_insert(global.mensajes_lista,0,mensaje_map)


}
