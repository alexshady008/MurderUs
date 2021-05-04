/// @description Contr cuando se reporta un cuerpo
// Puede escribir su código en este editor

#region comprueba su visibilidad
		/*if (global.muerto==false and instance_exists(obj_personaje) and 
		obj_personaje.pers_investigar!=noone and instance_exists(obj_personaje.pers_investigar)) visible=true
		else visible=false*/
#endregion


if (global.jugabilidad)
{
#region REPORTA
	for(i=0;i<5;i+=1)
	{
		
		#region se presiona el boton
			if(device_mouse_check_button_pressed(i,mb_left)) 
			{  
				if(device_mouse_x(i)>=(x-dif) and device_mouse_x(i)<=(x+dif)   //70
				and device_mouse_y(i)>(y-dif) and device_mouse_y(i)<=(y+dif))  //+100
				{
					if (global.muerto==false and global.investigando==false and instance_exists(obj_personaje) and visible==true 
						and obj_personaje.pers_investigar!=noone and instance_exists(obj_personaje.pers_investigar))
					{
						escala = 1.1
						#region Investiga un cuerpo
							/// sonido
							if global.musica == true
							{ audio_play_sound(snd_boton,100,false) }
						
							global.investigando = true
							var skin_pista = obj_personaje.pers_investigar.skin_pista
							var color_pista = obj_personaje.pers_investigar.color_pista
							var letra_pista = obj_personaje.pers_investigar.letra_pista
							var investigacion = instance_create_layer(x-300,y,"Tareas",obj_contr_investigacion)
							investigacion.skin_pista = skin_pista
							investigacion.color_pista = color_pista
							investigacion.letra_pista = letra_pista
							show_debug_message("SKIN PISTA = "+string(skin_pista))
							show_debug_message("COLOR PISTA = "+string(color_pista))
							show_debug_message("LETRA PISTA = "+string(letra_pista))
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