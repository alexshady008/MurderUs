/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Propiedades de la camara
	global.cam_x = camera_get_view_x(view_camera[0]) 
	global.cam_y = camera_get_view_y(view_camera[0]) 
	global.cam_ancho = camera_get_view_width(view_camera[0])
	global.cam_alto = camera_get_view_height(view_camera[0])
#endregion

#region COntro el alfa final
	if (mostrarPantallaFinal) {
		if (alfaFinal<1) alfaFinal+=0.01
		if (alfaFondo<1) alfaFondo+=0.02
	}	
#endregion



if (global.estadoJuego == "jugando"){
	
	#region Contr cuando ses completan todas las tareas
		if (global.cant_tareas_completadas>=global.max_tareas){
			// Sonido
			if (global.musica==true) {
				audio_stop_all()
				audio_play_sound(snd_tripulantes_ganadores,100,false)
			}
			global.estadoJuego = "juego_terminado_tripulantes_ganadores"
			mensaje_juego_finalizado = "tripulantes_completaron_tareas"
			alarm[4] = tiempo_pasar_escena*1.5
			scr_activar_transicion_final()
		}
	#endregion
	
	#region COntr cuando asesinan a todos los tripulantes o cuando la raza 2 se queda sin oxigeno
		if (global.jugador_tipo == "IMPOSTOR"){
			
			#region Todos los tripulantes asesinados - Ganan la raza 2
				var cant_tripulantes = instance_number(obj_personaje_bot)
				if (cant_tripulantes<=0) {
					// Sonido
					if (global.musica==true) {
						audio_stop_all()
						audio_play_sound(snd_asesinos_ganadores,100,false)
					}
					global.estadoJuego = "juego_terminado_impostores_ganadores"
					mensaje_juego_finalizado = "tripulantes_eliminados"
					alarm[4] = tiempo_pasar_escena*1.5
					scr_activar_transicion_final()
				}
			#endregion
			
			#region El jugador raza 2 se queda sin oxigeno - Ganan los tripulantes
				if (global.oxigeno<=0){
					// Sonido
					if (global.musica==true) {
						audio_stop_all()
						audio_play_sound(snd_tripulantes_ganadores,100,false)
					}
					global.estadoJuego = "juego_terminado_tripulantes_ganadores"
					mensaje_juego_finalizado = "raza2_sin_oxigeno"
					alarm[4] = tiempo_pasar_escena*1.5
					scr_activar_transicion_final()
				}
			#endregion
			
			#region Se reduce el oxigeno
				if (global.oxigeno>0) global.oxigeno-=0.1  //0.15
			#endregion
		}
	#endregion

}