/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//SOnido al completar la tarea
if (global.tarea_completada==true and sonido_tarea_completada==false){
	sonido_tarea_completada=true
	if (global.musica) audio_play_sound(snd_tarea_finalizada,100,false)
}


// Destruye la tarea
if (instance_exists(obj_contr_animacion_muerte) or global.estadoJuego!="jugando") instance_destroy()