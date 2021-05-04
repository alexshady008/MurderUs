/// @description Contr el sprite de transmision
// Puede escribir su código en este editor

if (instance_exists(obj_tareas_completar) and obj_tareas_completar.total_puntos_objetivos!=false){
	var completando = obj_tareas_completar.completando[0]
	if !(completando) {
		sprite_index = spr_transmicion__incorrecta_completar
		if (sonido_activado==false and global.musica==true) {
			sonido_activado=true
			sonido = audio_play_sound(snd_interferencia,100,true) 
		} 
	}	
	else {
		sprite_index = spr_transmicion__correcta_completar
		if (sonido_activado==true and global.musica==true) {
			sonido_activado = false
			if (sonido!=noone and audio_is_playing(sonido))  {
				audio_stop_sound(sonido) 
				sonido=noone
			}	
		}
	}	
}

image_speed = 0.4


//Se destruye
if !(instance_exists(obj_tareas_completar)) {
	if (sonido!=noone and audio_is_playing(sonido))  audio_stop_sound(sonido) 
	instance_destroy()
}	