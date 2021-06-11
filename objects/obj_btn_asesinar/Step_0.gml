/// @description Contr el movimiento del jugador
// Puede escribir su código en este editor

if (global.jugabilidad)
{
#region Asesina
	for(i=0;i<5;i+=1)
	{
		
		#region se presiona el boton
			if(device_mouse_check_button_pressed(i,mb_left)) 
			{  
				if(device_mouse_x(i)>=(x-dif) and device_mouse_x(i)<=(x+dif)   //70
				and device_mouse_y(i)>(y-dif) and device_mouse_y(i)<=(y+dif))  //+100
				{
					if (global.muerto==false and global.saboteando==false and global.asesinar<=0 and instance_exists(obj_personaje)
					and obj_personaje.pers_asesinar!=noone and instance_exists(obj_personaje.pers_asesinar))
					{
						escala = 1.1
						
						// Sonido
						if (global.musica) audio_play_sound(snd_asesinar,100,false)  
						
						global.asesinar = global.tiempoEsperaAsesinar
						var pers_asesinar = obj_personaje.pers_asesinar
						
						#region  Asesina en el modo online
						if (global.modo_jugabilidad==1)
						{
							//Contr el tiempo de espera para volver a asesinar
							with(obj_contr_juego_online){
								if (global.step_delta>=1) alarm[2] = room_speed/global.step_delta;
								else alarm[2] = room_speed;
							}
							// Manda datos del asesinato y crea el personaje muerto
							scr_asesinar_personaje(pers_asesinar.idJugador,obj_personaje.idJugador)
							with(pers_asesinar){
								muerto = true
								scr_contr_pers_muerto(obj_personaje.skin, obj_personaje.contrColor, obj_personaje.nombre)
							}
							// Crea las pistas
							with(obj_personaje){
								mostrar_pistas = true
								pistas_mostradas = 0
								if !(contacto_con_sangre) contacto_con_sangre = true
								alarm[2] = 1
							}
						}
						#endregion
						
						#region  Asesina en el modo offline
						if (global.modo_jugabilidad>1)
						{
							//Contr el tiempo de espera para volver a asesinar
							with(obj_contr_juego_offline) alarm[2] = room_speed;
							// Crea el personaje muerto
							with(pers_asesinar) scr_asesinar_bot()
							// Controla el oxigeno
							global.oxigeno = 100
							#region COntrola la puntuacion y los tripulantes infectados
								// Guarda la cantidad de partidas ganadas
								global.tripulantes_infectados_offline += 1
								scr_guardar_datos("tripulantes_infectados_offline", global.tripulantes_infectados_offline)
								// Guarda los puntos online
								global.puntuacion_offline += global.puntos_al_infectar
								scr_guardar_datos("puntuacion_offline", global.puntuacion_offline)
							#endregion
						}
						#endregion
						
					}
				} 
			}
		#endregion
		
		#region Se suelta el boton
			if(device_mouse_check_button_released(i,mb_left)) 
			{
				image_alpha = 0.5
				escala = 1
			}
		#endregion
	}

#endregion
}