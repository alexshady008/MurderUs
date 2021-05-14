/// @description Contr el movimiento del jugador
// Puede escribir su código en este editor

#region comprueba su visibilidad
if (room!=rm_lobby){
	if (global.jugador_tipo != "TRIPULANTE"){
		if (instance_exists(obj_personaje) and obj_personaje.obj_usar!=noone) visible=true
		else visible=false
	}
	else {
		visible=true
	}
}
else {
	if (instance_exists(obj_personaje) and obj_personaje.obj_usar!=noone) visible=true
	else visible=false
}
#endregion


if (global.jugabilidad)
{
#region Usa un objeto o tarea
	for(i=0;i<5;i+=1)
	{
		
		#region se presiona el boton
			if(device_mouse_check_button_released(i,mb_left)) 
			{  
				if(device_mouse_x(i)>=(x-dif) and device_mouse_x(i)<=(x+dif)   //70
				and device_mouse_y(i)>(y-dif) and device_mouse_y(i)<=(y+dif))  //+100
				{
					if (instance_exists(obj_personaje) and obj_personaje.obj_usar!=noone and global.saboteando==false)
					{
						escala = 1.1
						
						var obj_usar = obj_personaje.obj_usar
						
						#region Si es una tarea
						if (obj_usar.tipo=="tarea"){
							if (global.musica) audio_play_sound(snd_boton,100,false)  /// sonido
						
							//var contr_tarea = scr_crea_contr_tarea(obj_usar.num_tarea)
							var contr_tarea = scr_crea_contr_tarea(obj_usar.contr_tarea)
							if (contr_tarea!=noone) {
								contr_tarea.num_tarea = obj_usar.num_tarea
								contr_tarea.saboteada = obj_usar.sabotado
							}	
						}
						#endregion
						
						#region Si es una maquina para ver el minimapa
						else if (obj_usar.tipo=="maquina"){
							if (global.musica) audio_play_sound(snd_boton,100,false)  /// sonido
						
							if !(global.ver_minimapa_jugadores) {
								global.ver_minimapa_jugadores = true
								if !(instance_exists(obj_contr_mostrar_minimapa)) instance_create_layer(x-300,y,"Tareas",obj_contr_mostrar_minimapa)
							}	
						}
						#endregion
						
						#region Si es un objeto  para ver las camaras
						else if (obj_usar.tipo=="camaras"){
							if (global.musica) audio_play_sound(snd_boton,100,false)  /// sonido
						
							if !(global.ver_camaras) {
								global.ver_camaras = true
								if !(instance_exists(obj_contr_ver_camaras)) instance_create_layer(x-300,y,"Camaras",obj_contr_ver_camaras)
							}	
						}
						#endregion
						
						#region Si es el boton de emergencia
						else if (obj_usar.tipo=="btn_emergencia" and global.modo_jugabilidad==1){
							#region Aprieta el boton de emergencia para comenzar una discusion
								// Sonido
								if (global.musica) {
									audio_stop_all()
									audio_play_sound(snd_boton_emergencia,100,false)
								}
								
								global.estadoJuego = "boton_emergencia_apretado"
								global.jugabilidad = false
								global.id_jugador_informador = obj_personaje.idJugador
								
								// Contr la interfaz del btn de emergencia
								if (instance_exists(obj_contr_juego_online)){
									with(obj_contr_juego_online) scr_contr_interfaz_btn_emergencia()
								}
								
								// Contr el mensaje que se envia al servidor
								scr_apretar_boton_emergencia(global.id_jugador_informador)
							#endregion
						}
						#endregion
						
						#region  Si es una alcantarilla
						else if (obj_usar.tipo=="agujero"){
							var escondido = obj_personaje.escondido
							if (escondido) {
								obj_personaje.escondido=false
								obj_personaje.phy_position_x = obj_usar.x//+32
								obj_personaje.phy_position_y = obj_usar.y//+32
								scr_mostrar_personaje(obj_personaje.idJugador)
							}	
							else {
								obj_personaje.escondido=true
								obj_personaje.esconderseAlcantarilla=true
								obj_personaje.phy_position_x = obj_usar.x//+32
								obj_personaje.phy_position_y = obj_usar.y//+32
								scr_ocultar_personaje(obj_personaje.idJugador)
							}	
							with(obj_usar) scr_abrir_alcantarilla()
						}	
						#endregion
						
						#region Si es la computadora para cambiar la vestimenta
						else if (obj_usar.tipo=="vestimenta" and global.modo_jugabilidad==1){
							#region Aprieta el boton y comienza a cambiar su vestimenta
							if (global.chat==false and global.cambiarVestimenta==false){
								// Sonido
								if (global.musica) {
									audio_stop_all()
									audio_play_sound(snd_boton,100,false)
								}
								
								instance_create_layer(room_width/2,room_height/2,"Tareas",obj_contr_cambiar_vestimenta)
							}	
							#endregion
						}
						#endregion
						
						#region  Si es una taquilla para esconderse
						else if (obj_usar.tipo=="esconderse"){
							var escondido = obj_personaje.escondido
							if (escondido) {
								obj_personaje.escondido=false
								obj_personaje.phy_position_x = obj_usar.x//+32
								obj_personaje.phy_position_y = obj_usar.y+15//+32
								scr_mostrar_personaje(obj_personaje.idJugador)
							}	
							else {
								obj_personaje.escondido=true
								obj_personaje.esconderseAlcantarilla=false
								obj_personaje.phy_position_x = obj_usar.x//+32
								obj_personaje.phy_position_y = obj_usar.y//+32
								scr_ocultar_personaje(obj_personaje.idJugador)
							}	
							with(obj_usar) scr_abrir_alcantarilla()
						}	
						#endregion
						
					}
				} 
			}
		#endregion
		
		#region Se suelta el boton
			/*if(device_mouse_check_button_released(i,mb_left)) 
			{
				image_alpha = 0.5
				escala = 1
			}*/
		#endregion
	}

#endregion
}