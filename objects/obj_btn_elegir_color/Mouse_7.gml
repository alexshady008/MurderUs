/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == false and global.tarea_completada == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Elige un color
	if (obj_contr_tarea2.jugar){
		var contr_turno_max = obj_contr_tarea2.turno_max
		var contr_turno_jug = obj_contr_tarea2.turno_jugador
		if (contr_turno_jug<contr_turno_max){
			seleccionado = true
			//alarm[0] = 15
			if (global.step_delta>=1) alarm[0] = 15/global.step_delta
			else alarm[0] = 15
			obj_contr_tarea2.color_elegido_jugador[contr_turno_jug] = tipo_color
			with(obj_contr_tarea2){
				turno_jugador += 1
				if (turno_jugador==turno_max) {
					jugar = false
					//alarm[2] = 50  //Alarma que comprueba si se selecionaron bien los colores
					if (global.step_delta>=1) alarm[2] = 50/global.step_delta
					else alarm[2] = 50
				}
			}
		}
	}	
	#endregion
}
