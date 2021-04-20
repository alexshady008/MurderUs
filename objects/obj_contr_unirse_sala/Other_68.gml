/// @description Contr los datos del servidor
// Puede escribir su código en este editor

var tipo = async_load[? "type"]
//show_debug_message(tipo)

switch(tipo){
	
	case network_type_data:
		//show_debug_message("Datos!")
		
		var buffer = async_load[? "buffer"]
		buffer_seek(buffer,buffer_seek_start,0)
		var bufferDatos = buffer_read(buffer,buffer_text)
		var mapaDatos = json_decode(bufferDatos)
		
		if ( ds_exists(mapaDatos,ds_type_map) ) {
			var mensaje = ds_map_find_value(mapaDatos,"mensaje")
			
			switch(mensaje)
			{
				case "salasPublicas":
					#region Contr las salas publicas
					
						// Destruye los botones de las salas
						instance_destroy(obj_btn_sala_publica)

					
						#region Obtiene la lista de salas
							var salas_publicas = ds_map_find_value(mapaDatos,"listaSalas")
							var cant_salas = ds_list_size(salas_publicas)
							//show_debug_message("CANT DE SALAS: "+string(cant_salas))
						#endregion
						
						#region Si hay salas
						if ( cant_salas > 0){
							cant_salas_publicas = cant_salas
							var posX = 352
							for(i=0 ; i<cant_salas ; i++){
								
								#region Almacena los datos de la sala
									var sala_map = ds_list_find_value(salas_publicas,i)
									var id_sala = real(ds_map_find_value(sala_map,"id"))
									var nombre_sala = ds_map_find_value(sala_map,"nombre")
									//var impostores_sala = real(ds_map_find_value(sala_map,"impostores"))
									var jugadores_sala = real(ds_map_find_value(sala_map,"jugadores"))
									var max_jugadores_sala = real(ds_map_find_value(sala_map,"max_jugadores"))
									//var max_tareas = real(ds_map_find_value(sala_map,"max_tareas"))
									//var tiempo_discusion = real(ds_map_find_value(sala_map,"tiempo_discusion"))
									var mapa_sala_string = ds_map_find_value(sala_map,"mapa")
									if !(is_undefined(mapa_sala_string)) var mapa_sala = real(mapa_sala_string)
									else var mapa_sala = noone
									//show_debug_message(mapa_sala)
								#endregion
								
								#region Contr pos Y
									if (i<2) var posY = 156
									else if (i>=2 and i<4) var posY = 300
									else if (i>=4) var posY = 444
								#endregion
								
								#region Contr pos X
									if (i%2=0) var posX = 352
									else var posX = 848
								#endregion
								
								#region Crea el boton de la sala
									var btn_sala = instance_create_layer(posX,posY,"Interfaz",obj_btn_sala_publica)
									btn_sala.id_sala = id_sala
									btn_sala.nombre_sala = nombre_sala
									//btn_sala.impostores_sala = impostores_sala
									btn_sala.jugadores_sala = jugadores_sala
									btn_sala.max_jugadores_sala = max_jugadores_sala
									//btn_sala.max_tareas = max_tareas
									//btn_sala.tiempo_discusion = tiempo_discusion
									btn_sala.mapa_sala = mapa_sala
								#endregion
							}
						}
						#endregion
						
						#region Si no hay salas
						else {
							cant_salas_publicas = 0
						}
						#endregion
						
					#endregion
				break;
				
				
				case "buscandoSala":
				show_debug_message("buscandoSala!")
				#region Contr el mensaje a mostrar cuando no se encuentra una sala
					global.jugabilidad=true
					switch(os_get_language()) {
						case "es": scr_crear_popup_mensaje("msgChico","Sala no encontrada!")  break;
						case "pt": scr_crear_popup_mensaje("msgChico","Jogo não encontrado!")  break;
						case "it": scr_crear_popup_mensaje("msgChico","Gioco non trovato!")  break;
						case "ru": scr_crear_popup_mensaje("msgChico","Игра не найдена!")  break;
						default: scr_crear_popup_mensaje("msgChico","Game not found!")  break;
					}
				#endregion
				break;	
				
				
				case "salaNoDisponible":
				show_debug_message("salaNoDisponible!")
				#region Contr el mensaje a mostrar cuando no se encuentra una sala
					global.jugabilidad=true
					switch(os_get_language()) {
						case "es": scr_crear_popup_mensaje("msgChico","Sala no disponible!")  break;
						case "pt": scr_crear_popup_mensaje("msgChico","Jogo não disponível!")  break;
						case "it": scr_crear_popup_mensaje("msgChico","Gioco non disponibile!")  break;
						case "ru": scr_crear_popup_mensaje("msgChico","Игра недоступна!")  break;
						default: scr_crear_popup_mensaje("msgChico","Game not available!")  break;
					}
				#endregion
				break;	
				
				case "salaDisponible":
				show_debug_message("salaDisponible!")
				global.idSala = real(ds_map_find_value(mapaDatos,"idSala"))
				global.cant_jugadores_sala = real(ds_map_find_value(mapaDatos,"cantJugadores"))
				global.cant_impostor_sala = real(ds_map_find_value(mapaDatos,"cantImpostores"))
				global.cant_detective_sala = real(ds_map_find_value(mapaDatos,"cantDetectives"))
				global.cant_complice_sala = real(ds_map_find_value(mapaDatos,"cantComplices"))
				global.max_tareas = real(ds_map_find_value(mapaDatos,"cantTareas"))
				global.tipo_mapa_sala = ds_map_find_value(mapaDatos,"nivelSala")
				global.tipo_sala = ds_map_find_value(mapaDatos,"tipoSala")
				global.datos_nivel_pers = ds_map_find_value(mapaDatos,"datosSala")
				global.tiempo_votacion = real(ds_map_find_value(mapaDatos,"tiempoDiscusion"))
				//global.lista_num_tareas = ds_map_find_value(mapaDatos,"indexTareas")
				global.jugabilidad=true
				global.administrador=false
				global.editor = false
				room_goto(rm_lobby)
				break;
				
			}
			
		}
		
	break;
}	
