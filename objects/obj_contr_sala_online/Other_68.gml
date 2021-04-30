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
			datosNuevos += 1
			
			switch(mensaje)
			{
								
				case "ListaConexionClientes":
					#region Contr la lista de clientes cuando se conecta un jugador
						//if (global.administrador) global.juegoListo = ds_map_find_value(mapaDatos,"juegoListo")
						show_debug_message("ListaConexionClientes")
						var lista_jugadores = ds_map_find_value(mapaDatos,"listaJugadores")
						var cant_jugadores = ds_list_size(lista_jugadores)
						
						#region Agrega al jugador a las listas y crea al personaje
						
							for(i=0 ; i<cant_jugadores ; i++)
							{
								var jugador = ds_list_find_value(lista_jugadores,i)
								var id_jugador = real(ds_map_find_value(jugador,"clienteId"))
								var nombre_jugador = ds_map_find_value(jugador,"clienteNombre")
								var color_jugador = real(ds_map_find_value(jugador,"clienteColor"))
								var skin_jugador = real(ds_map_find_value(jugador,"clienteSkin"))
								var prenda_jugador = real(ds_map_find_value(jugador,"clientePrenda"))
								var accesorio_jugador = real(ds_map_find_value(jugador,"clienteAccesorio"))
								var sombrero_jugador = real(ds_map_find_value(jugador,"clienteSombrero"))
								var mascota_jugador = real(ds_map_find_value(jugador,"clienteMascota"))
							
								#region Si hubo una conexion, comprueba si ese jugador ya esta agregado, y si no lo esta, lo agrega
								
										var jugador_agregado = false
										for(j=0 ; j<ds_list_size(global.jugadores_id) ; j++){
											var id_jugador_lista = ds_list_find_value(global.jugadores_id,j)
											if (jugador_agregado==false and id_jugador_lista==id_jugador) jugador_agregado = true
										}
										
										if !(jugador_agregado){
											// Crea al jugador
											var id_instancia = scr_crear_jugador(id_jugador,nombre_jugador,color_jugador,skin_jugador,prenda_jugador,accesorio_jugador,sombrero_jugador,mascota_jugador)
											ds_map_add(jugador,"idObjeto",id_instancia)
											// Lo agrega a la lista
											ds_list_add(global.jugadores_id,id_jugador)
											ds_list_add(global.jugadores_lista,jugador)
											// Comienza a enviar el aviso de conexion
											if (id_jugador==global.idLocal and global.conectado==false){
												global.conectado=true
												alarm[0] = global.tiempoComprobarConexion
												alarm[2] = comprobarConexionDelServidor  //Cada 3 segundos comprueba si recibio un mensaje del servidor, de lo contrario, se desconecto
											}
										}
									
								#endregion
								
								#region Contr la camara
									scr_crea_camara_jugador()
								#endregion
								
							}
							
						#endregion
					#endregion
				break
				
				
				case "clienteDesconectado":
					#region Elimina al jugador desconectado
						var id_jugador_desc = real(ds_map_find_value(mapaDatos,"clienteId"))
						show_debug_message(id_jugador_desc)
						
						#region Lo elimina de la lista de ids
							for(i=0 ; i<ds_list_size(global.jugadores_id) ; i++){
								var _id = ds_list_find_value(global.jugadores_id,i)
								if (_id == id_jugador_desc) ds_list_delete(global.jugadores_id,i) 
							}
						#endregion
						
						#region Lo elimina de la lista de jugadores
							for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
								var jugador = ds_list_find_value(global.jugadores_lista,i)
								var jugador_id = real(ds_map_find_value(jugador,"clienteId"))
								if (jugador_id == id_jugador_desc) {
									ds_list_delete(global.jugadores_lista,i)
									ds_map_destroy(jugador)
								}	
							}
						#endregion
						
						#region Lo elimina de la lista de impostores
							for(i=0 ; i<ds_list_size(global.impostores_lista) ; i++){
								var impostor_id = ds_list_find_value(global.impostores_lista,i)
								if (impostor_id == id_jugador_desc) {
									ds_list_delete(global.impostores_lista,i)
								}	
							}
						#endregion
						
						#region Lo elimina de la lista de detectives
							for(i=0 ; i<ds_list_size(global.detective_lista) ; i++){
								var detective_id = ds_list_find_value(global.detective_lista,i)
								if (detective_id == id_jugador_desc) {
									ds_list_delete(global.detective_lista,i)
								}	
							}
						#endregion
						
						#region ELimina al jugador
							for(i=0 ; i<instance_number(obj_entidad_online) ; i++){
								var pers = instance_find(obj_entidad_online,i)
								if (pers.idJugador == id_jugador_desc) {
									var contr_pos = pers.idContrPos
									contr_pos.ocupado = false
									contr_pos.idJugador = noone
									instance_destroy(pers)
								}	
							}
						#endregion
						
					#endregion
				break
				
				
				case "juegoEliminado":
					#region Se termina la partida
						global.tipoDesconexion = "partidaDesconectada"
						if (ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id) 
						if (ds_exists(global.jugadores_lista,ds_type_list)) ds_list_destroy(global.jugadores_lista) 
						if (ds_exists(global.servidorDatos,ds_type_list)) ds_list_destroy(global.servidorDatos) 
						scr_publicidad()
						global.conectado=false
						room_goto(rm_menu2)
					#endregion
				break
				
				
				case "juegoAutomaticoComenzando":
				//show_message_async("MsgNuevo")
					#region Controla el contador de comenzar partida automatica
						var contador = real(ds_map_find_value(mapaDatos,"tiempoEnComenzar"))
						contador_comenzar_juego = contador
					#endregion	
				break;
				
				
				case "MsgNuevo":
				//show_message_async("MsgNuevo")
					#region Controla los mensajes
						scr_contr_mensaje_recibido(mapaDatos)
					#endregion	
				break;
				
				
				case "cambioVestimentaJug":
				#region COntr cuando un jug cambia su vestimenta
					var id_jugador = real(ds_map_find_value(mapaDatos,"idJugador"))
					var skin_jugador = ds_map_find_value(mapaDatos,"skin")
					var prenda_jugador = ds_map_find_value(mapaDatos,"prenda")
					var accesorio_jugador = ds_map_find_value(mapaDatos,"accesorio")
					var sombrero_jugador = ds_map_find_value(mapaDatos,"sombrero")
					var mascota_jugador = ds_map_find_value(mapaDatos,"mascota")
					
					for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
						var jugador = ds_list_find_value(global.jugadores_lista,i)
						var jugador_id = real(ds_map_find_value(jugador,"clienteId"))
						if (jugador_id == id_jugador) {
							ds_map_replace(jugador,"clienteSkin",skin_jugador)
							ds_map_replace(jugador,"clientePrenda",prenda_jugador)
							ds_map_replace(jugador,"clienteAccesorio",accesorio_jugador)
							ds_map_replace(jugador,"clienteSombrero",sombrero_jugador)
							ds_map_replace(jugador,"clienteMascota",mascota_jugador)
							var inst = real(ds_map_find_value(jugador,"idObjeto"))
							if (inst!=noone and instance_exists(inst)) {
								if (inst.skin != real(skin_jugador)){
									inst.skin = real(skin_jugador)
									inst.alarm[0] = 1
								}
								inst.prenda = real(prenda_jugador)
								inst.accesorio = real(accesorio_jugador)
								inst.sombrero = real(sombrero_jugador)
								inst.mascota = real(mascota_jugador)
								var inst_mascota = inst.inst_mascota
								if (inst_mascota!=noone and instance_exists(inst_mascota)) inst_mascota.mascota=real(mascota_jugador)
							}
						}	
					}
				#endregion	
				break;
				
				
				case "administrador":
					global.administrador=true
				break;
				
				
				case "juegoPorComenzar":
				#region Contr la configuracion de la partida e inicia el juego
					show_debug_message("juegoPorComenzar")
					global.tipo_mapa_a_jugar = ds_map_find_value(mapaDatos,"tipoNivel")
					//global.datos_mapa_a_jugar = ds_map_find_value(mapaDatos,"datosNivel")
					global.cant_impostor_sala = ds_map_find_value(mapaDatos,"cantImpostores")
					global.cant_detective_sala = ds_map_find_value(mapaDatos,"cantDetectives")
					global.cant_complice_sala = ds_map_find_value(mapaDatos,"cantComplices")
					global.impostores_lista = ds_map_find_value(mapaDatos,"listaImpostores")
					global.detective_lista = ds_map_find_value(mapaDatos,"listaDetective")
					global.complices_lista = ds_map_find_value(mapaDatos,"listaComplice")
					//global.roles_administrados = true
					scr_contr_roles()
					
					#region  Avanza a la room
						switch(global.tipo_mapa_a_jugar){
							case 1: room_goto(rm_nivel1) break
							case 2: room_goto(rm_nivel2) break
							case 3: room_goto(rm_nivel3) break
							default: 
								if (global.datos_nivel_pers!=noone) scr_contr_mapa_datos()
							break
						}
					#endregion
				#endregion	
				break;
				
				
				case "juegoPorComenzar_config":
				#region Contr la configuracion de la partida e inicia el juego
				/*
					show_debug_message("juegoPorComenzar_config")
					global.tipo_mapa_a_jugar = ds_map_find_value(mapaDatos,"tipoNivel")
					global.datos_mapa_a_jugar = ds_map_find_value(mapaDatos,"datosNivel")
					global.cant_impostor_sala = ds_map_find_value(mapaDatos,"cantImpostores")
					global.cant_detective_sala = ds_map_find_value(mapaDatos,"cantDetectives")
					
					#region  Avanza a la room
						switch(global.tipo_mapa_a_jugar){
							case 1: room_goto(rm_nivel1) break
							case 2: room_goto(rm_nivel2) break
							default: room_goto(rm_nivel_personalizado) break
						}
					#endregion
				*/	
				#endregion	
				break;
				
				
				case "juegoPorComenzar_jugadores":
				#region Contr los roles del jugador
				/*
					show_debug_message("juegoPorComenzar_jugadores")
					global.impostores_lista = ds_map_find_value(mapaDatos,"listaImpostores")
					global.detective_lista = ds_map_find_value(mapaDatos,"listaDetective")
					global.roles_administrados = true
					if (global.roles_administrados) scr_contr_roles()
				*/
				#endregion	
				break;
				
				
				case "juegoPorNoComenzar":
					show_debug_message("juegoPorNoComenzar")
				break;
				
				
				#region Llegan datos de actualizacion de los jugadores
				
				case "datosJugadores":
					//show_debug_message("datosJugadores22222")
					
					#region Obtiene el num de paquete, el tiempo del servidor y controla el tiempo del cliente
						numPaquete = ds_map_find_value(mapaDatos,"numeroPaquete")
						if global.numPaquete > numPaquete {break;}
						global.numPaquete = numPaquete
						global.tiempoServidor = real(ds_map_find_value(mapaDatos,"tiempo"))
						global.tiempoCliente = global.tiempoServidor - (intervaloPasadoMs/ 1000.00 )
					#endregion	
					
					
					#region Controla la Listas de datos del servidor
						ds_list_add(global.servidorDatos,mapaDatos)
						var sizeListaServer = ds_list_size(global.servidorDatos)
						if ( sizeListaServer > 20 ) {
							var mapaEliminar = ds_list_find_value(global.servidorDatos,0)
							ds_list_delete(global.servidorDatos,0)
							ds_map_destroy(mapaEliminar)
						}
					#endregion	
					
					
					#region Selecciona los datos objetivos y anterior segun el tiempo del cliente
						var tiempoActual = global.tiempoCliente
						var listDatosTam = ( ds_list_size(global.servidorDatos) - 1 )
						var objetivo = noone
						var anterior = noone
			
						for( i=0 ; i<listDatosTam ; i++ ){
							var mapActual = ds_list_find_value(global.servidorDatos,i)
							var mapActualTiempo = ds_map_find_value(mapActual,"tiempo")
							var mapProximo = ds_list_find_value(global.servidorDatos,i+1)
							var mapProximoTiempo = ds_map_find_value(mapProximo,"tiempo")
							if (tiempoActual>mapActualTiempo and tiempoActual<mapProximoTiempo){
								objetivo = mapProximo
								anterior = mapActual
								break;
							}
						}
				
						if !(objetivo){
							objetivo = ds_list_find_value(global.servidorDatos,ds_list_size(global.servidorDatos) - 1)
							//anterior = ds_list_find_value(global.servidorDatos,ds_list_size(global.servidorDatos) - 2)
						}
					#endregion	
					
					
					if ( objetivo and anterior ){
							
						#region  Selecciona un promedio de tiempo basandose en la diferencia entre el tiempo actual / tiempo objetivo y en la maxima diferencia entre el tiempo objetivo / tiempo anterior
							var tiempoObjetivo = ds_map_find_value(objetivo,"tiempo")
							var tiempoAnterior = ds_map_find_value(anterior,"tiempo")
							var diferenciaTiempo = tiempoObjetivo - tiempoActual
							var maxDiferenciaTiempo =  fixed(tiempoObjetivo - tiempoAnterior,3)
							var promTiempo = fixed(diferenciaTiempo / maxDiferenciaTiempo,3)
							//show_debug_message("Time Point: " + string_format(promTiempo,1,5))
							if ( is_infinity(promTiempo) ){promTiempo = 0}
							if ( is_nan(promTiempo) ){promTiempo = 0}
						#endregion
						
						
						#region  Agrega los datos del objetivo registrado del servidor a su correspondiente jugador
							var objetivoDatoServidorList = ds_map_find_value(objetivo,"listaDatos")
							for( i=0 ; i<(ds_list_size(objetivoDatoServidorList)) ; i++){
								var mapListaDatosObjetivo = ds_list_find_value(objetivoDatoServidorList,i)
								var idJugador = real(ds_map_find_value(mapListaDatosObjetivo, "idJugador"))
					
								for( j=0 ; j<ds_list_size(global.jugadores_lista) ; j++ ){
									var jugadorMap = ds_list_find_value(global.jugadores_lista,j)
										var idJugadorMapString = ds_map_find_value(jugadorMap,"clienteId")
										if !( is_undefined(idJugadorMapString) ) {
											var idJugadorMap = real(idJugadorMapString)
											/*show_debug_message("--------------------------------")
											show_debug_message("TAMANIO DE LA LISTA: "+string(ds_list_size(global.jugadores_lista)))
											show_debug_message("ID DE LISTA DE JUGADORES:" + string(idJugadorMap))
											show_debug_message("ID DEL JUGADOR RECIBIDO: "+string(idJugador))
											show_debug_message("ID LOCAL: "+string(global.idLocal))
											show_debug_message("--------------------------------")*/
											if (idJugador==idJugadorMap and idJugador!=global.idLocal){
											var jugador = real(ds_map_find_value(jugadorMap,"idObjeto"))
											//show_debug_message("Recibe datos del jugador")
												if (instance_exists(jugador)){
													//show_debug_message("Datos del jugador222")
													var objetivo_posX = real(ds_map_find_value(mapListaDatosObjetivo, "posX"))
													var objetivo_posY = real(ds_map_find_value(mapListaDatosObjetivo, "posY"))
													var objetivo_direccion = real(ds_map_find_value(mapListaDatosObjetivo, "direccion"))
													//var objetivo_muerte = real(ds_map_find_value(mapListaDatosObjetivo, "muerte"))
													var objetivo_accion = ds_map_find_value(mapListaDatosObjetivo, "accion")
													
													jugador.objetivo_posX = objetivo_posX
													jugador.objetivo_posY = objetivo_posY
													jugador.objetivo_direccion= objetivo_direccion
													//jugador.objetivo_muerte= objetivo_muerte
													jugador.objetivo_accion= objetivo_accion
												}
											}
										}
								}

							}
						#endregion
						
						
						#region  Agrega los datos del objetivo anterior registrado del servidor a su correspondiente jugador
							var anteriorDatoServidorList = ds_map_find_value(anterior,"listaDatos")
							for( i=0 ; i<(ds_list_size(anteriorDatoServidorList)) ; i++){
								var mapListaDatosAnterior = ds_list_find_value(anteriorDatoServidorList,i)
								var idJugador = real(ds_map_find_value(mapListaDatosAnterior, "idJugador"))
					
								for( j=0 ; j<ds_list_size(global.jugadores_lista) ; j++ ){
									var jugadorMap = ds_list_find_value(global.jugadores_lista,j)
										var idJugadorMapString = ds_map_find_value(jugadorMap,"clienteId")
										if !( is_undefined(idJugadorMapString) ) {
											var idJugadorMap = real(idJugadorMapString)
											//show_debug_message("idJugadorMap: "+string(idJugadorMap))
											//show_debug_message("idJugador: "+string(idJugador))
											//show_debug_message("idLocal: "+string(global.idLocal))
											if (idJugador==idJugadorMap and idJugador!=global.idLocal){
											var jugador = real(ds_map_find_value(jugadorMap,"idObjeto"))
												if (instance_exists(jugador)){
													//show_debug_message("Datos del jugador")
													var anterior_posX = real(ds_map_find_value(mapListaDatosAnterior, "posX"))
													var anterior_posY = real(ds_map_find_value(mapListaDatosAnterior, "posY"))
													var anterior_direccion = real(ds_map_find_value(mapListaDatosAnterior, "direccion"))
													//var anterior_muerte = real(ds_map_find_value(mapListaDatosAnterior, "muerte"))
													var anterior_accion = ds_map_find_value(mapListaDatosAnterior, "accion")

													jugador.anterior_posX = anterior_posX
													jugador.anterior_posY = anterior_posY
													jugador.anterior_direccion = anterior_direccion
													//jugador.anterior_muerte = anterior_muerte
													jugador.anterior_accion = anterior_accion
													
												}
											}
										}
								}

							}
						#endregion
							
					}	
					
				break
				
				#endregion
			}
			
		}
		
	break;
}	
