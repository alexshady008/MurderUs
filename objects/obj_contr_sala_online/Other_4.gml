/// @description Solicita jugadores y crea variables
// Puede escribir su código en este editor

physics_world_gravity (0, 0)

#region Variables
	global.tilemap_colision = layer_tilemap_get_id("Colision")
	
	global.modo = "online"
	global.jugabilidad = true
	global.editor = false
	global.tipoDesconexion = noone
	global.conectado = false
	global.tiempoComprobarConexion = room_speed/10
	global.numPaquete = -1
	global.tiempoServidor = 0.016
	global.tiempoCliente = 0
	vecesPorSegundo = 22
	numPaquete = 0
	intervaloPasadoMs = 50
	global.latencia = room_speed/vecesPorSegundo
	global.direccion = noone
	global.accion = false
	global.jugador = noone
	global.juegoListo = false
	//global.roles_administrados = false
	partidaPorCrearse = false
	temp = 10
	bordes1 = make_color_rgb(178, 0, 0)
	max_pers_online = 10
	intentar_conectar = 0
	max_intentar_conectar = 3
	datosNuevos = 1
	datosAnteriores = 0
	comprobarConexionDelServidor = room_speed*2
	cant_minima_jugadores = 10  // valor por defecto
	mostrarSpawn = false
	contador_comenzar_juego = -1
#endregion

//COnecta al servidor
//scr_conectar_al_servidor()


#region Contr las listas de jugadores y del chat
	// Lista del jugadores en el juego
	global.jugadores_lista = ds_list_create()
	global.jugadores_id = ds_list_create()
	global.mensajes_lista = ds_list_create()
	global.impostores_lista = ds_list_create()
	global.detective_lista = ds_list_create()
	global.complices_lista = ds_list_create()
	global.servidorDatos = ds_list_create()
	global.lista_tareas = ds_list_create()
	global.nombre_habitaciones = ds_list_create()
	//global.ver_camaras = false
#endregion


#region  Activa el sonido del fondo 2
	if (audio_is_playing(snd_fondo1)) audio_stop_sound(snd_fondo1)
	if (global.musica) audio_play_sound(snd_fondo2,100,true)  /// sonido de fondo 2
#endregion


#region Crea botones del juego
	instance_create_layer(1200,48,"Interfaz",obj_btn_volver_juego)
	instance_create_layer(1200,48,"Interfaz",obj_palanca_mov)
	instance_create_layer(1200,48,"Interfaz",obj_btn_chat)
	instance_create_layer(1200,48,"Interfaz",obj_btn_msjs_automaticos)
	instance_create_layer(1200,48,"Interfaz",obj_btn_usar)
	if (global.administrador) btn_jugar = instance_create_layer(1200,room_height-100,"Interfaz",obj_btn_empezar_partida)
	else btn_jugar = noone
#endregion


#region Consulta la lista de jugadores si no es el administrador
	//if !(global.administrador){
		//scr_solicitar_lista_jugadores()
	//}
	scr_conectar_a_sala(global.idSala)
	intentar_conectar += 1
#endregion

alarm[1] = room_speed*3   //Comprueba si se creo al menos un jugador, sino sale de la partida
//alarm[5] = comprobarConexionDelServidor  //Cada 3 segundos comprueba si recibio un mensaje del servidor, de lo contrario, se desconecto


//show_debug_message(global.datos_nivel_pers)

