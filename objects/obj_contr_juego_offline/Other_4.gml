/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (global.modo_jugabilidad==1) instance_destroy()

#region Contr que no sea un mapa para editar
	if (global.editor) instance_destroy()
#endregion

else
{
	if (global.modo_jugabilidad>1){

	// Config la fisica
	physics_world_gravity (0, 0)

	#region Variables
		//global.tilemap_colision = layer_tilemap_get_id("Colision")
	
		global.mostrar_mapa = false
		global.estadoJuego = "intro"
		global.jugabilidad = false
		if !(ds_exists(global.nombre_habitaciones,ds_type_list)) global.nombre_habitaciones = ds_list_create()
		global.direccion = noone
		global.accion = false
		global.tiempoEsperaAsesinar = 20
		global.asesinar = global.tiempoEsperaAsesinar
		global.usar_btn_emergencia = global.tiempoEsperaAsesinar
		global.sabotear = true
		global.saboteando = false
		global.ver_minimapa = false
		global.ver_minimapa_jugadores = false
		global.ver_camaras = false
		global.jugador = noone
		global.muerto = false
		global.tarea_saboteada = noone
		global.tarea_saboteada_x = noone
		global.tarea_saboteada_y = noone
		global.tarea_completada = false
		global.cant_tareas_completadas = 0
		global.cant_infectados = 0
		global.alfaFondo = 0.75
		global.oxigeno = 100
		global.cambiarVestimenta = false
		partidaPorCrearse = false
		temp = 10
		bordes1 = make_color_rgb(178, 0, 0)
		mensaje_juego_finalizado = false
		ganador = false
		mostrarPantallaFinal = false
		alfaFinal = 0
		alfaFondo = 0
		juego_finalizado = false
		dibujar_efecto = false
		mostrarSpawn = false
		tipoObjeto = 0
		tiempo_pasar_escena = room_speed*4
	#endregion


	#region  Activa el sonido del fondo 1
		if (audio_is_playing(snd_fondo2)) audio_stop_sound(snd_fondo2)
		if (global.musica) audio_play_sound(snd_fondo1,100,true)  /// sonido de fondo 2
	#endregion


	#region Propiedades de la camara
		cam_x = camera_get_view_x(view_camera[0]) 
		cam_y = camera_get_view_y(view_camera[0]) 
		cam_ancho = camera_get_view_width(view_camera[0])
		cam_alto = camera_get_view_height(view_camera[0])
	#endregion


	#region Crea botones del juego para todos los roles
		instance_create_layer(1200,48,"Interfaz",obj_btn_volver_juego)
		instance_create_layer(1200,48,"Interfaz",obj_palanca_mov)
		//instance_create_layer(1200,48,"Interfaz",obj_btn_reportar)
		instance_create_layer(1200,48,"Interfaz",obj_btn_usar)
	#endregion


	#region Crea a los objetos si es un mapa personalizado
		if (global.tipo_mapa_a_jugar=="personalizado" and global.datos_nivel_pers!=noone){
			scr_contr_cargar_nivel(global.datos_nivel_pers)
		}
	#endregion


	#region Crea la alarma que asigna un numero de tarea a cada tarea
		if (global.tipo_mapa_a_jugar!="personalizado" ) alarm[0] = 5	
	#endregion


	#region Crontr las tareas
		for(i=0 ; i<global.max_tareas ; i++){
			global.tareas_completadas[i] = false
		}
	#endregion


	#region Elegir rol
		//var jugador_tipo = 2
		if (global.modo_jugabilidad_offline==1) var jugador_tipo = 1
		else if (global.modo_jugabilidad_offline==2) var jugador_tipo = irandom_range(1,2)
	
		switch(jugador_tipo){
			case 1: global.jugador_tipo = "TRIPULANTE"  break;
			case 2: global.jugador_tipo = "IMPOSTOR"  alarm[8]=irandom_range(500,1300) break;
		}
	#endregion


	#region  Controla los sonidos, botones y variables de cada rol
		scr_contr_sonidos_botones_roles()
	#endregion


	#region  Controla el mp_grid del fondo  
		global.celda_ancho = 32
		global.celda_alto = 32
	
		var celdas_horizontales = room_width div global.celda_ancho
		var celdas_verticales = room_height div global.celda_alto
	
		global.grid_nivel = mp_grid_create(0, 0, celdas_horizontales, celdas_verticales, global.celda_ancho, global.celda_alto)
	
		// Agregar instancias
		alarm[6] = 5
	#endregion

	alarm[1] = 5  //Crea a los jugadores
	alarm[5] = tiempo_pasar_escena
	alarm[3] = 1

	}
}