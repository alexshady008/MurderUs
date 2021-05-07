/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (global.modo_jugabilidad==1) instance_destroy()

#region Contr que no sea un mapa para editar
	if (global.editor) {
		//instance_create_layer(0,0,"Controlador",obj_contr_editor)
		//instance_create_depth(0,0,-999999,obj_contr_editor)
		instance_destroy()
	}
#endregion

else
{

// Config la fisica
physics_world_gravity (0, 0)

#region Variables
	//global.tilemap_colision = layer_tilemap_get_id("Colision")
	
	global.mostrar_mapa = false
	global.estadoJuego = "intro"
	global.jugabilidad = false
	//global.tipoDesconexion = noone
	//global.numPaquete = -1
	//global.tiempoServidor = 0.016
	//global.tiempoCliente = 0
	//global.servidorDatos = ds_list_create()
	if !(ds_exists(global.nombre_habitaciones,ds_type_list)) global.nombre_habitaciones = ds_list_create()
	//intervaloPasadoMs = 50
	//vecesPorSegundo = 22
	//numPaquete = 0
	//segundos_totales_votacion = 90
	//datosNuevos = 1
	//datosAnteriores = 0
	//global.latencia = room_speed/vecesPorSegundo
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
	//global.investigando = false
	//global.limpiando = false
	global.jugador = noone
	global.muerto = false
	global.tarea_saboteada = noone
	global.tarea_saboteada_x = noone
	global.tarea_saboteada_y = noone
	global.tarea_completada = false
	global.cant_tareas_completadas = 0
	global.cant_infectados = 0
	global.alfaFondo = 0.75
	//global.id_jugador_reportado = noone  //Jugador que fue reportado como muerto
	//global.id_jugador_informador = noone  //Jugador que reporto un cuerpo o presiono el boton de emergencia
	//global.contadorDiscusion = global.tiempo_votacion
	//global.comenzarVotacion = 30
	global.cambiarVestimenta = false
	//id_jugador_elegido = noone
	//tipo_jugador_elegido = noone
	//nombre_jugador_elegido = noone
	//skin_jugador_elegido = noone
	partidaPorCrearse = false
	temp = 10
	bordes1 = make_color_rgb(178, 0, 0)
	//max_pers_online = 10
	//index_anim_btn_emergencia = 0
	//contr_alarma_anim_btn_emergencia = 5
	//contr_alarma_anim_reportar_cuerpo = 5
	//escala_anim_reportar_cuerpo = 1
	//skin_jugador_reportado = noone
	mensaje_juego_finalizado = false
	//comprobarConexionDelServidor = room_speed*2
	mostrarPantallaFinal = false
	alfaFinal = 0
	alfaFondo = 0
	juego_finalizado = false
	dibujar_efecto = false
	mostrarSpawn = false
	tipoObjeto = 0
	tiempo_pasar_escena = room_speed*4
	
	
	// Listas de jugadores locales
	//lista_id_jugadores = noone
	//lista_jugadores = noone
	
	// Crea Variables si es el asesino
	//if (global.jugador_tipo == "IMPOSTOR") global.asesinar = global.tiempoEsperaAsesinar
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
	if (global.modo_jugabilidad_offline==1) var jugador_tipo = 1
	else if (global.modo_jugabilidad_offline==2) var jugador_tipo = irandom_range(1,2)
	
	switch(jugador_tipo){
		case 1: global.jugador_tipo = "TRIPULANTE"  break;
		case 2: global.jugador_tipo = "IMPOSTOR"  break;
	}
#endregion


#region  Controla los sonidos, botones y variables de cada rol
	scr_contr_sonidos_botones_roles()
#endregion

alarm[1] = 5  //Crea a los jugadores
alarm[5] = tiempo_pasar_escena
alarm[3] = 1

}