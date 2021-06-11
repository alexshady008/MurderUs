/// @description Comprueba si la tarea fue hecha correctamente
// Puede escribir su código en este editor

if !(global.tarea_completada)
{
	
	#region Comprueba si se completo la tarea
		if (point_distance(posX_barra, posY_barra[0], posX_barra, posY_linea[0])<=3
		and point_distance(posX_barra, posY_barra[1], posX_barra, posY_linea[1])<=3)
		{
			global.tarea_completada = true
			if (global.step_delta>=1) alarm[0] = 100/global.step_delta
			else alarm[0] = 100
			
			// Guarda la cantidad de tareas completadas
			global.tareas_jugador_completadas += 1
			scr_guardar_datos("tareas_jugador_completadas", global.tareas_jugador_completadas)
		}
	#endregion

}


//SOnido al completar la tarea
if (global.tarea_completada==true and sonido_tarea_completada==false){
	sonido_tarea_completada=true
	if (global.musica) audio_play_sound(snd_tarea_finalizada,100,false)
}


// Destruye la tarea
if (instance_exists(obj_contr_animacion_muerte) or global.estadoJuego!="jugando") instance_destroy()
