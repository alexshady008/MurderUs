// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_tarea_completada(){
	global.tarea_completada = true
	scr_contr_tarea_finalizada()
		
	if (global.step_delta>=1) alarm[0] = 100/global.step_delta
	else alarm[0] = 100
		
	if !(sonido_tarea_completada){
		sonido_tarea_completada=true
		if (global.musica) audio_play_sound(snd_tarea_finalizada,100,false)
	}
	
	// Guarda la cantidad de tareas completadas
	global.tareas_jugador_completadas += 1
	scr_guardar_datos("tareas_jugador_completadas", global.tareas_jugador_completadas)
}