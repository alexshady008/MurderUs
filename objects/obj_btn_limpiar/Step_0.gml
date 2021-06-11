/// @description Contr cuando se reporta un cuerpo
// Puede escribir su código en este editor

#region comprueba su visibilidad
		/*if (global.muerto==false and instance_exists(obj_personaje) and 
		obj_personaje.pers_investigar!=noone and instance_exists(obj_personaje.pers_investigar)) visible=true
		else visible=false*/
#endregion


if (global.jugabilidad)
{
#region 
	for(i=0;i<5;i+=1)
	{
		
		#region se presiona el boton
			if(device_mouse_check_button(i,mb_left)) 
			{  
				if(device_mouse_x(i)>=(x-dif) and device_mouse_x(i)<=(x+dif)   //70
				and device_mouse_y(i)>(y-dif) and device_mouse_y(i)<=(y+dif))  //+100
				{
					if (global.muerto==false and instance_exists(obj_personaje) and visible==true)
					{
						var huellas = obj_personaje.huella_limpiar
						var sangre = obj_personaje.sangre_limpiar
						var sangre_pers = obj_personaje.sangre_pers_limpiar
						var cadaver = obj_personaje.pers_limpiar
						var cabeza_cadaver = obj_personaje.pers_cabeza_limpiar
						
						#region Contr la limpieza 
							if (huellas!=noone or sangre!=noone or sangre_pers!=noone 
							or cadaver!=noone or cabeza_cadaver!=noone)
							{
								//if (global.musica) audio_play_sound(snd_boton,100,false)
								escala = 1.1
								global.limpiando=true
								image_alpha = 0.5
								obj_personaje.limpiando_rastro = true
								scr_limpiar_rastros(obj_personaje.idJugador)
								var contacto_con_sangre = obj_personaje.contacto_con_sangre
								if !(contacto_con_sangre) obj_personaje.contacto_con_sangre = true
								//scr_limpiar_rastros_asesino(huellas, sangre, sangre_pers, cabeza_cadaver, cadaver, obj_personaje)
															
							}
						#endregion
					}
				} 
			}
		#endregion
		
		#region Se suelta el boton
			if(device_mouse_check_button_released(i,mb_left)) 
			{
				//var dif2 = dif*2
				//if(device_mouse_x(i)>=(x-dif2) and device_mouse_x(i)<=(x+dif2)   //70
				//and device_mouse_y(i)>(y-dif2) and device_mouse_y(i)<=(y+dif2))  //+100
				//{
					if (global.muerto==false and instance_exists(obj_personaje) and visible==true){
						escala = 1
						global.limpiando=false
						image_alpha = 1
						obj_personaje.limpiando_rastro = false
						scr_detener_limpieza_rastros(obj_personaje.idJugador)
						// Contr la visibilidad del cadaver que lleva
						//scr_soltar_cadaver(obj_personaje)

					}
				//}
			}
		#endregion
	}

#endregion
}