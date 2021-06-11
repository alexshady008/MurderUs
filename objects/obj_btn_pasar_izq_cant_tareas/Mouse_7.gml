/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true and global.tipo_mapa_sala!="personalizado"){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Cambia la cant de jugadores
		if (global.max_tareas > global.min_tareas_crearse) global.max_tareas--
		//else global.max_tareas=global.max_tareas_crearse
	#endregion
}
