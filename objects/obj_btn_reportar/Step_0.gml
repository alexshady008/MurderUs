/// @description Contr cuando se reporta un cuerpo
// Puede escribir su código en este editor

#region comprueba su visibilidad
		if (global.muerto==false and instance_exists(obj_personaje) and 
		obj_personaje.pers_reportar!=noone and instance_exists(obj_personaje.pers_reportar)) visible=true
		else visible=false
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
					if (global.muerto==false and global.saboteando==false and instance_exists(obj_personaje) and visible==true 
						and obj_personaje.pers_reportar!=noone and instance_exists(obj_personaje.pers_reportar))
					{
						escala = 1
						#region Reporta un cuerpo
							// Sonido
							if (global.musica==true) {
								audio_stop_all()
								audio_play_sound(snd_reportar_cuerpo,100,false)
							}
								
							global.estadoJuego = "cuerpo_reportado"
							global.jugabilidad = false
							var pers_reportar = obj_personaje.pers_reportar
							global.id_jugador_reportado = pers_reportar.idJugador
							global.id_jugador_informador = obj_personaje.idJugador
							
							// Contr la interfaz
							if (instance_exists(obj_contr_juego_online)){
								obj_contr_juego_online.skin_jugador_reportado = scr_contr_skin_jugador_reportado()
								with(obj_contr_juego_online) scr_contr_interfaz_cuerpo_reportado()
							}
							
							// Envia el mensaje al servidor
							scr_reportar_muerto(global.id_jugador_reportado,global.id_jugador_informador)
							
							//Guarda los datos cuando reporta
							global.cuerpos_reportados_online += 1
							scr_guardar_datos("cuerpos_reportados_online", global.cuerpos_reportados_online)
						#endregion
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