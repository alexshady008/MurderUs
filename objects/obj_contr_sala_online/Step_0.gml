/// @description Contr cuando se puede comenzar a jugar la partida
// Puede escribir su código en este editor

#region Propiedades de la camara
	/*global.cam_x = camera_get_view_x(view_camera[0]) 
	global.cam_y = camera_get_view_y(view_camera[0]) 
	global.cam_ancho = camera_get_view_width(view_camera[0])
	global.cam_alto = camera_get_view_height(view_camera[0])*/
#endregion

if (global.administrador) {
	
	// Crea el boton
	if (btn_jugar==noone){
		btn_jugar = instance_create_layer(1200,room_height-100,"Interfaz",obj_btn_empezar_partida)
	}
	
	// Controla si el juega esta listo o no
	switch(global.tipo_mapa_sala){
		case 1: cant_minima_jugadores = 8 break
		case 2: cant_minima_jugadores = 6 break
		case 3: cant_minima_jugadores = 10 break
		default: cant_minima_jugadores = 8  break
	}
	
	/*if (global.cant_jugadores_sala=10) var cant_min_jugadores_crear_sala = global.cant_jugadores_sala
	else if (global.cant_jugadores_sala>7 and global.cant_jugadores_sala<=10) var cant_min_jugadores_crear_sala = global.cant_jugadores_sala-2
	else if (global.cant_jugadores_sala>10) var cant_min_jugadores_crear_sala = global.cant_jugadores_sala-4*/
	//var cant_min_jugadores_crear_sala = cant_minima_jugadores
	
	var cant_jugadores_totales = ds_list_size(global.jugadores_id)
	if (cant_jugadores_totales>=cant_minima_jugadores) global.juegoListo=true
	else global.juegoListo=false
}