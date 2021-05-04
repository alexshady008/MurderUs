/// @description Contr variables al voler al menu
// Puede escribir su código en este editor

#region Inicia Variables cada vez que se vuelve al menu
	global.jugabilidad = true
	global.menuBloq = false
	global.popup = false
	global.modo = noone
	global.conectado = false
	global.partidaTerminada = false
	global.jugadorGanador = false
	global.datos_nivel_pers = noone
	global.editor = false
	global.administrador = false
	global.jugador_tipo = "TRIPULANTE"
	global.idLocal = 0 
	global.idSala = noone
	global.chat = false
	global.cambiarVestimenta = false
	global.tipo_mapa_a_jugar = noone
	global.datos_mapa_a_jugar = noone
	global.tiempo_votacion = 30
	//global.impostor = false
	global.muerto = false
	global.estadoJuego = noone
	global.saboteando = false
	global.contr_votacion =  false
	global.votar_impostor = noone
	global.asesinar = noone
	global.usar_btn_emergencia = noone
	global.colorElegido = 1
	global.room_historia_finalizada = noone
	entradaTeclado = ""
	monedas_ganadas = 3
	multiplicar_monedas = 3
	monedas_a_ganar = 0
	color_ganando_monedas = make_color_rgb(232,102,255)
	borde_ganando_monedas = make_color_rgb(81,0,145)
#endregion


#region contr el pop up cuando se desconecta el juego online
	if (room == rm_menu) {
		switch(global.tipoDesconexion){
			case "descInternet": scr_popup_desconexion_sin_internet() break
			case "partidaDesconectada": scr_popup_desconexion_sin_jugadores() break
			case "error": scr_popup_desconexion_error() break
		}
		global.tipoDesconexion = noone
	}
	else {
		global.tipoDesconexion = noone
	}
#endregion


#region  Activa el sonido del fondo 1
		if (audio_is_playing(snd_fondo2)) audio_stop_sound(snd_fondo2)
		if (audio_is_playing(snd_fondo1)) audio_stop_sound(snd_fondo1)
		if (global.musica) audio_play_sound(snd_fondo1,100,true)  /// sonido de fondo 1
#endregion


#region Crea el boton para promocionar el otro juego
	if (global.promocionar_juego != false){
		if !(instance_exists(obj_btn_promocion_otro_juego)) instance_create_layer(96,480,"Interfaz",obj_btn_promocion_otro_juego)
	}	
#endregion


#region Crea el banner para promocionar otro juego
	// Crea el banner
	if (global.vecesJugado==3 or global.vecesJugado==6 or global.vecesJugado>=8){
		if (global.vecesJugarMenu % 3 == 0){
			if (global.promocionar_juego=="ACEPTADO_FALLRUN" and global.mostrar_promocion_fallRun==true){
			if (room==rm_menu) alarm[3] = 5 }
			if (global.promocionar_juego=="ACEPTADO_STICKFIGHT" and global.mostrar_promocion_stickFight==true){
			if (room==rm_menu) alarm[3] = 5 }
			if (global.promocionar_juego=="ACEPTADO_STICKHEROES" and global.mostrar_promocion_stickheroes==true){
			if (room==rm_menu) alarm[3] = 5 }
		}
	}
#endregion


#region Elimina las listas de datos
	if (ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id) 
	if (ds_exists(global.jugadores_lista,ds_type_list)) ds_list_destroy(global.jugadores_lista) 
	if (ds_exists(global.servidorDatos,ds_type_list)) ds_list_destroy(global.servidorDatos) 
	if (ds_exists(global.mensajes_lista,ds_type_list)) ds_list_destroy(global.mensajes_lista) 
	if (ds_exists(global.impostores_lista,ds_type_list)) ds_list_destroy(global.impostores_lista) 
	if (ds_exists(global.detective_lista,ds_type_list)) ds_list_destroy(global.detective_lista) 
	if (ds_exists(global.complices_lista,ds_type_list)) ds_list_destroy(global.complices_lista) 
	if (ds_exists(global.lista_tareas,ds_type_list)) ds_list_destroy(global.lista_tareas) 
	if (ds_exists(global.nombre_habitaciones,ds_type_list)) ds_list_destroy(global.nombre_habitaciones) 
	global.nombre_habitaciones = ds_list_create()
#endregion


#region Contr las monedas ganadas al finalizar una partida
	if (global.contr_monedas_ganadas != 0){
		switch(global.contr_monedas_ganadas){
			//case 1: scr_contr_monedas_ganadas(monedas_ganadas) break
			//case 2: scr_contr_monedas_ganadas(monedas_ganadas*3) break
			case 1: scr_contr_monedas_ganadas(monedas_ganadas) monedas_a_ganar=global.monedas+monedas_ganadas break
			case 2: scr_contr_monedas_ganadas(monedas_ganadas*multiplicar_monedas) monedas_a_ganar=global.monedas+(monedas_ganadas*multiplicar_monedas) break
		}
	}
#endregion