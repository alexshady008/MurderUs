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
	
#region Contr cuando se completa todas las tareas
	if (global.cant_tareas_completadas>=global.max_tareas){
		global.estadoJuego = "juego_terminado_tripulantes_ganadores"
		mensaje_juego_finalizado = "tripulantes_completaron_tareas"
		//mostrarPantallaFinal = true
		alarm[4] = tiempo_pasar_escena*1.5
		scr_activar_transicion_final()
	}
#endregion

}