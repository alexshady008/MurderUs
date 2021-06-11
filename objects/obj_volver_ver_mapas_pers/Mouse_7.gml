/// @description Crea el nivel
if ( global.jugabilidad){
	escala = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Vuelve a la room de crear la sala
		global.datos_nivel_pers = noone
		global.tipo_mapa_sala = 1
		if (global.modo_jugabilidad==1) room_goto(rm_crear_sala)
		else {
			if (global.modo_jugabilidad_offline==1) room_goto(rm_config_practicar)
			else if (global.modo_jugabilidad_offline==2) room_goto(rm_config_supervivencia)
		}	
	#endregion
}
