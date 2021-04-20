/// @description Comprueba si la tarea fue hecha correctamente
// Puede escribir su código en este editor

if !(global.tarea_completada)
{
	
	#region Comprueba si se completo la tarea
		if ((valor_barra[0]>=valor_asignado[0]-dif and valor_barra[0]<=valor_asignado[0]+dif)
		and (valor_barra[1]>=valor_asignado[1]-dif and valor_barra[1]<=valor_asignado[1]+dif)
		and (valor_barra[2]>=valor_asignado[2]-dif and valor_barra[2]<=valor_asignado[2]+dif)){
			global.tarea_completada = true
			if (global.step_delta>=1) alarm[0] = 100/global.step_delta
			else alarm[0] = 100
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
