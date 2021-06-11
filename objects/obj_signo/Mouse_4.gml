/// @description Se suelta
// Puede escribir su código en este editor

if (obj_tareas_analisis.signo_elegido!=noone){
	escala = 1
	
	if (signo == obj_tareas_analisis.signo_elegido) {
		obj_tareas_analisis.cant_veces_mezclado++
		if (global.musica) audio_play_sound(snd_swosh,100,false) 
	}	
	else {
		if (global.musica) audio_play_sound(snd_error,100,false) 
	}

	obj_tareas_analisis.signo_elegido=noone
	
	if (global.step_delta>=1) obj_tareas_analisis.alarm[2] = 100/global.step_delta
	else obj_tareas_analisis.alarm[2] = 100
	
	if (global.musica) audio_play_sound(snd_boton,100,false) 
}
