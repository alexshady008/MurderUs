/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Cambia la cant de jugadores
		if (global.tiempo_votacion > global.min_tiempo_votacion) global.tiempo_votacion-=10
		//else global.max_tareas=global.min_tareas_crearse
	#endregion
}
