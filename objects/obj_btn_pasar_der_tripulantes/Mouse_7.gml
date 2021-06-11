/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Cambia la cant 
		if (global.cant_tripulantes_sala < global.cant_max_tripulantes_sala) global.cant_tripulantes_sala++
	#endregion
}
