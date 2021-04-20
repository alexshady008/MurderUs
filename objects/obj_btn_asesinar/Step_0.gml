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