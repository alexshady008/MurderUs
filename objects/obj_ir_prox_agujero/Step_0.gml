/// @description Contr cuando se reporta un cuerpo
// Puede escribir su código en este editor


if (global.jugabilidad==true and instance_exists(obj_personaje)
and obj_personaje.prox_alcantarilla!=noone and instance_exists(obj_personaje.prox_alcantarilla))
{
	#region contr angulo y posicion
	x = obj_personaje.x
	y = obj_personaje.y+100
	var prox_alcantarilla = obj_personaje.prox_alcantarilla
	var actual_alcantarilla = obj_personaje.actual_alcantarilla
	var angulo = point_direction(actual_alcantarilla.x,actual_alcantarilla.y,prox_alcantarilla.x,prox_alcantarilla.y)
	image_angle = angulo
	#endregion

	for(i=0;i<5;i+=1)
	{	
		
		#region se presiona el boton
			if(device_mouse_check_button_pressed(i,mb_left)) 
			{  
				if(device_mouse_x(i)>=(x-dif) and device_mouse_x(i)<=(x+dif)   //70
				and device_mouse_y(i)>(y-dif) and device_mouse_y(i)<=(y+dif))  //+100
				{
					//if (instance_exists(obj_personaje) and obj_personaje.prox_agujero!=noone
					//and instance_exists(obj_personaje.prox_agujero))
					//{
						escala = 1.1
						#region Cambia de alcantarilla al jugador
							/// sonido
							if global.musica == true
							{ audio_play_sound(snd_boton,100,false) }
							
							if (obj_personaje.alcantarilla_pasada==noone) obj_personaje.alcantarilla_pasada=actual_alcantarilla
							else obj_personaje.alcantarilla_pasada=noone
						
							obj_personaje.phy_position_x = prox_alcantarilla.x
							obj_personaje.phy_position_y = prox_alcantarilla.y
							
						#endregion
					//}
				} 
			}
		#endregion
		
		#region Se suelta el boton
			if(device_mouse_check_button_released(i,mb_left)) 
			{
				image_alpha = 1
				escala = 1
			}
		#endregion
	}


}