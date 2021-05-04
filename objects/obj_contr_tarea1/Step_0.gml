/// @description Comprueba si la tarea fue hecha correctamente
// Puede escribir su código en este editor

if !(global.tarea_completada)
{
	
	#region Actualiza el valor de las barras
		valor_barra1 = btn_aumentar_barra1.valor_barra
		valor_barra2 = btn_aumentar_barra2.valor_barra
		valor_barra3 = btn_aumentar_barra3.valor_barra
		valor_barra4 = btn_aumentar_barra4.valor_barra
	#endregion

	#region Comprueba si se completo la tarea
	if (valor_barra1>=valor_max) and (valor_barra2>=valor_max) and (valor_barra3>=valor_max) and (valor_barra4>=valor_max) 
	{
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
