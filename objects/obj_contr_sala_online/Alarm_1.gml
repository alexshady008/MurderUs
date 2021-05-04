/// @description Comprueba si se creo al menos un jugador, sino sale de la partida
// Puede escribir su código en este editor

if !(global.conectado){
	if (intentar_conectar<=max_intentar_conectar){
		scr_conectar_a_sala(global.idSala)
		intentar_conectar += 1
		alarm[1] = room_speed*3
	}
	else {
		var cant_jugadores = ds_list_size(global.jugadores_lista)
		if (cant_jugadores==0){
			global.tipoDesconexion = "error"
			if (ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id) 
			if (ds_exists(global.jugadores_lista,ds_type_list)) ds_list_destroy(global.jugadores_lista) 
			if (ds_exists(global.servidorDatos,ds_type_list)) ds_list_destroy(global.servidorDatos) 
			//scr_publicidad()
			room_goto(rm_menu)
		}
	}
}
