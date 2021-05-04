/// @description Contr el sonido
// Puede escribir su código en este editor

if (global.estadoJuego=="jugando"){
	
#region activa el sonido segun la distancia con el jugador
	if (global.musica==true and instance_exists(obj_personaje)){
		var jugador_dist = point_distance(x,y,obj_personaje.x,obj_personaje.y)
		
		if (jugador_dist <= contr_dist_sonido) {
			if (sonido==noone) {
				sonido = audio_play_sound(snd_viento,100,true)
				//audio_sound_pitch(sonido, volumen)
			}
		}	
		else {
			if (sonido!=noone and audio_is_playing(sonido)) {
				audio_stop_sound(sonido)
				sonido = noone
			}	
		}	
	}
#endregion

}
else {
	if (sonido!=noone and audio_is_playing(sonido)) {
		audio_stop_sound(sonido)
		sonido = noone
	}
}