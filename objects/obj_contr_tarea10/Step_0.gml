/// @description Comprueba si la tarea fue hecha correctamente
// Puede escribir su código en este editor

if !(global.tarea_completada)
{
	
	#region Comprueba si se completo la tarea
	if (instance_exists(obj_punto_reloj) and instance_exists(obj_aguja_reloj)){
		if (tiempo < tiempo_max){
			var angulo_aguja = obj_aguja_reloj.angulo
			if (angulo_aguja<angulo+5 and angulo_aguja>angulo-5){
				tiempo+=0.5
				obj_punto_reloj.marcado = true
			}
			else {
				tiempo = 0
				obj_punto_reloj.marcado = false
			}
		}
		else {
			global.tarea_completada = true
			if (global.step_delta>=1) alarm[0] = 100/global.step_delta
			else alarm[0] = 100
		}
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