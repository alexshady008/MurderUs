/// @description Termina el mantenimeinto en el objeto
// Puede escribir su código en este editor
if (interactuando==true and mantener_objeto!=noone and instance_exists(mantener_objeto)){
	if (mantener_objeto.mantenimiento_completado==false){
		interactuando=false
		mantener_objeto.mantenimiento_completado = true
		mantener_objeto.alarm[1]=1
		obj_tareas_mantenimiento.objetos_mantenidos++
		// sonido
		if (global.musica) audio_play_sound(snd_swosh,100,false)
	}
}