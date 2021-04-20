/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

x = room_width/2
y = room_height/2
color = c_white
color2 = make_colour_rgb(12,107,12) 
global.fase = 0
global.partidaTerminada = false
//global.jugadorGanador = false


// Se elimina listas

// Mapas de jugadores offline
if (ds_exists(global.mapa_personajes,ds_type_map)){
	ds_map_destroy(global.mapa_personajes)
	global.mapa_personajes = ds_map_create()
}
if (ds_exists(global.mapa_personajes_nombres,ds_type_map)){
	ds_map_destroy(global.mapa_personajes_nombres)
	global.mapa_personajes_nombres = ds_map_create()
}
if (ds_exists(global.mapa_personajes_calificados,ds_type_map)){
	ds_map_destroy(global.mapa_personajes_calificados)
	global.mapa_personajes_calificados = ds_map_create()
}

// Mapa de jugadores online
if (ds_exists(global.jugadores_partida_online,ds_type_list)){
	ds_list_destroy(global.jugadores_partida_online)
} 


//Cre el boton de volver a jugar
instance_create_depth(x,y+253,-15,obj_btn_volver_a_jugar)


#region Sonido 
	/*if (global.jugadorGanador) {
		if (global.musica) audio_play_sound(snd_ganar_calificar,100,false)  /// sonido de ganar
	}
	else {
		if (global.musica) audio_play_sound(snd_perder_descalificar,100,false)  /// sonido de ganar
	}*/
	
	#region  Activa el sonido del fondo 2
		if (audio_is_playing(snd_fondo1)) audio_stop_sound(snd_fondo1)
		if (global.musica) audio_play_sound(snd_fondo2,100,true)  /// sonido de fondo 2
	#endregion
#endregion