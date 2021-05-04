/// @description Contr el movimiento del jugador
// Puede escribir su código en este editor

if (global.jugabilidad)
{
#region Sabotea
	for(i=0;i<5;i+=1)
	{
		
		#region se presiona el boton
			if(device_mouse_check_button_pressed(i,mb_left)) 
			{  
				if(device_mouse_x(i)>=(x-dif) and device_mouse_x(i)<=(x+dif)   //70
				and device_mouse_y(i)>(y-dif) and device_mouse_y(i)<=(y+dif))  //+100
				{
					if !(global.ver_minimapa) {
						escala = 0.95
						
						/// sonido
						if global.musica == true
						{ audio_play_sound(snd_boton,100,false) }
						
						global.ver_minimapa = true
						//instance_create_layer(x-300,y,"Tareas",obj_contr_sabotajes)
						if !(instance_exists(obj_contr_mostrar_minimapa)) instance_create_layer(x-300,y,"Tareas",obj_contr_mostrar_minimapa)
						
					}
				} 
			}
		#endregion
		
		#region Se suelta el boton
			if(device_mouse_check_button_released(i,mb_left)) 
			{
				image_alpha = 0.5
				escala = 0.85
			}
		#endregion
	}

#endregion
}