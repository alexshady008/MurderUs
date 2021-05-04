/// @description Contr cuando se esta presionando
// Puede escribir su código en este editor
if (presionado){
	x = mouse_x
	y = mouse_y
	
	mantener_objeto = instance_position(x,y,obj_objeto3_mantenimiento)
	if (mantener_objeto!=noone and mantener_objeto.mantenimiento_completado==false){
		if !(interactuando){
			interactuando = true
			if (global.step_delta>=1) alarm[1] = tiempo_mantenimiento/global.step_delta
			else alarm[1] = tiempo_mantenimiento
			// Activa sonido
			if (global.musica) sonido = audio_play_sound(snd_sonido,100,true) 
		}
	}
	else{
		interactuando=false
		//detiene sonido
		if (global.musica==true and sonido!=noone) {
			audio_stop_sound(sonido) 
			sonido=noone
		}
	}
	
}


#region contr la animacion
	if (interactuando) { image_speed=0.2 }
	else { image_index=0 image_speed=0 }
#endregion


//Se destruye
if !(instance_exists(obj_tareas_mantenimiento)) {
	if (sonido!=noone and audio_is_playing(sonido))  audio_stop_sound(sonido) 
	instance_destroy()
}