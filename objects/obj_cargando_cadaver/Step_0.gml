/// @description Contr Posicion y cadaver
// Puede escribir su código en este editor
if (creador!=noone and instance_exists(creador))
{
	//depth = creador.depth + 20
	
	if (visible)
	{
		#region contr su visibilidad
			if (global.estadoJuego!="jugando") visible=false
		#endregion
	
		if (cadaver!=noone and instance_exists(cadaver))
		{
			#region Contr el cadaver 
				cadaver.x = x
				cadaver.y = y
				cadaver.image_xscale = image_xscale
			#endregion
	
			#region COntr cuando esta cerca de una alcantarilla
				var alcantarilla = creador.obj_agujero_guardar_cuerpo
				if (alcantarilla!=noone and instance_exists(alcantarilla)){
					
					with(alcantarilla){
						if (global.musica) audio_play_sound(snd_abrir_alcantarilla,100,false)  
						image_index = 1
						image_speed = 0
						alarm[0] = tiempo
					}
					
					#region Guarda la puntuacion online si el complice es el jugador
						if (creador.jugador){
							// Guarda la cantidad de partidas ganadas
							global.cadaveres_escondidos_online += 1
							scr_guardar_datos("cadaveres_escondidos_online", global.cadaveres_escondidos_online)
							// Guarda los puntos online
							global.puntuacion_online += global.puntos_al_esconder_cadaver
							scr_guardar_datos("puntuacion_online", global.puntuacion_online)
						}
					#endregion
					
					instance_destroy(cadaver)
					visible = false
				}
			#endregion
		}
	}
}
else if (creador!=noone and !instance_exists(creador))
{
	instance_destroy()
} 