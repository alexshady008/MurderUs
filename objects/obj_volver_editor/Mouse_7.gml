/// @description Crea el nivel
if ( global.jugabilidad=true and global.visible_opciones == true){
	image_alpha = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Vuelve a la room de ver los mapas creados
		global.datos_nivel_pers = noone
		//global.tipo_mapa_sala = 1
		room_goto(rm_ver_mapas_pers)
	#endregion
}
