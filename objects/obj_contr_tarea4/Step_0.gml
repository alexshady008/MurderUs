/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if !(global.tarea_completada)
{
	if (btn_unidos==max_btn_unidos) 
	{
		global.tarea_completada = true
		if (global.step_delta>=1) alarm[0] = 100/global.step_delta
		else alarm[0] = 100
	}
}	


//SOnido al completar la tarea
if (global.tarea_completada==true and sonido_tarea_completada==false){
	sonido_tarea_completada=true
	if (global.musica) audio_play_sound(snd_tarea_finalizada,100,false)
}


// Destruye la tarea
if (instance_exists(obj_contr_animacion_muerte) or global.estadoJuego!="jugando") instance_destroy()