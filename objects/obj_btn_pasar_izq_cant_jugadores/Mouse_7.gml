/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Cambia la cant de jugadores
		if (global.cant_jugadores_sala > global.cant_min_jugadores_sala) global.cant_jugadores_sala--
		//else global.cant_jugadores_sala=global.cant_max_jugadores_sala
	#endregion
}
