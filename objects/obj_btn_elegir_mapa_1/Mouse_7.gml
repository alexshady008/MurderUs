/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala_x=1.15
	escala_y=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Cambia el tipo de mapa
		global.tipo_mapa_sala = 1
		global.cant_max_jugadores_sala = 15   //10
		global.cant_min_jugadores_sala = 8
		global.cant_max_impostores_sala = 3 
		global.cant_max_detectives_sala = 2
		global.cant_max_complices_sala = 1 
		global.cant_max_raza2_sala = 4   
		global.cant_raza2_sala = 2
		if (global.modo_jugabilidad==1) global.cant_jugadores_sala = global.cant_min_jugadores_sala 
		else global.cant_jugadores_sala = global.cant_max_jugadores_sala 
		global.cant_impostor_sala = global.cant_max_impostores_sala
		global.cant_detective_sala = global.cant_max_detectives_sala 
		global.cant_complice_sala = global.cant_max_complices_sala
		global.cant_tripulantes_sala = 10
		global.max_tareas_crearse = 10
		global.min_tareas_crearse = 7
		global.max_tareas = global.max_tareas_crearse
	#endregion
}
