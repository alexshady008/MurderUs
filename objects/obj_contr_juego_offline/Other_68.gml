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
				
				case "juegoPorComenzar_jugadores":
				#region Contr los roles del jugador
				/*
					show_debug_message("juegoPorComenzar_jugadores")
					global.impostores_lista = ds_map_find_value(mapaDatos,"listaImpostores")
					global.detective_lista = ds_map_find_value(mapaDatos,"listaDetective")
					global.roles_administrados = true
					#region  Controla los roles
						if (global.roles_administrados){
							scr_contr_roles()
							scr_contr_sonidos_botones_roles()
						}
					#endregion
				*/	
				#endregion	
				break;
				
				case "juegoComenzado":
					#region COmienza el juego
					show_debug_message("juegoComenzado")
						audio_stop_all()
						global.jugabilidad = true
						global.estadoJuego = "jugando"
						if (global.step_delta>=1) alarm[2] = room_speed/global.step_delta;
						else alarm[2] = room_speed;
					#endregion
				break
				
				
				case "clienteDesconectado":
					#region Elimina al jugador desconectado
					if !(juego_finalizado){
						var id_jugador_desc = real(ds_map_find_value(mapaDatos,"clienteId"))
						//show_debug_message(id_jugador_desc)
						
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
						
						#region Lo elimina de la lista de complices
							for(i=0 ; i<ds_list_size(global.complices_lista) ; i++){
								var complice_id = ds_list_find_value(global.complices_lista,i)
								if (complice_id == id_jugador_desc) {
									ds_list_delete(global.complices_lista,i)
								}	
							}
						#endregion
						
						#region ELimina al jugador
							for(i=0 ; i<instance_number(obj_entidad_online) ; i++){
								var pers = instance_find(obj_entidad_online,i)
								if (pers.idJugador == id_jugador_desc) {
									instance_destroy(pers)
								}	
							}
						#endregion
						
						#region ELimina al boton para votar 
							if (global.estadoJuego=="discusion")
							{
								if (instance_exists(obj_btn_votar_impostor)){
									for(i=0 ; i<instance_number(obj_btn_votar_impostor) ; i++){
										var btn = instance_find(obj_btn_votar_impostor,i)
										if (btn.id_jugador!=noone and btn.id_jugador==id_jugador_desc){
											instance_destroy(btn)
										}
									}
								}
							}	
						#endregion
					}
					#endregion
				break
				
				
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
				
				
				case "jugadorAsesinado":
					#region  Contr cuando alguien es asesinado
						var id_jugador_asesinado = real(ds_map_find_value(mapaDatos,"jugadorId_asesinado"))
						var id_jugador_asesino = real(ds_map_find_value(mapaDatos,"jugadorId_asesino"))
						var color_asesino = noone
						var skin_asesino = 0
						var prenda_asesino = 0
						var accesorio_asesino = 0
						var sombrero_asesino = 0
						var mascota_asesino = 0
						var nombre_asesino = noone
						
						#region crea las pistas del asesino
							for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++)
							{
								var jugador = ds_list_find_value(global.jugadores_lista,i)
								var id_jugador = real(ds_map_find_value(jugador,"clienteId"))
								if (id_jugador == id_jugador_asesino){
									color_asesino = real(ds_map_find_value(jugador,"clienteColor"))
									skin_asesino = real(ds_map_find_value(jugador,"clienteSkin"))
									prenda_asesino = real(ds_map_find_value(jugador,"clientePrenda"))
									accesorio_asesino = real(ds_map_find_value(jugador,"clienteAccesorio"))
									sombrero_asesino = real(ds_map_find_value(jugador,"clienteSombrero"))
									mascota_asesino = real(ds_map_find_value(jugador,"clienteMascota"))
									nombre_asesino = ds_map_find_value(jugador,"clienteNombre")
									var id_obj = ds_map_find_value(jugador,"idObjeto")
									
									if (id_obj!=noone and instance_exists(id_obj)){
										// Contr las pistas de sangre del escaner que se muestran a todos
										var contacto_con_sangre = id_obj.contacto_con_sangre
										if !(contacto_con_sangre) id_obj.contacto_con_sangre = true
										// Contr las pistas de sangre que se muestran solo a los detectives y complices
										if (global.jugador_tipo=="DETECTIVE" or global.jugador_tipo=="COMPLICE"){
											with(id_obj){
												mostrar_pistas = true
												pistas_mostradas = 0
												alarm[2] = 1
											}
										}
									}
								}	
							}
						#endregion
						
						#region Crea el personaje muerto y la animacion
						for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++)
						{
							var jugador = ds_list_find_value(global.jugadores_lista,i)
							var id_jugador = real(ds_map_find_value(jugador,"clienteId"))
							if (id_jugador == id_jugador_asesinado){
								
								#region Contr el personaje muerto
								if (id_jugador_asesino != global.idLocal){
									var id_obj = ds_map_find_value(jugador,"idObjeto")
									if (id_obj!=noone and instance_exists(id_obj)){
										//id_obj.muerto = true
										with(id_obj){
											muerto = true
											scr_contr_pers_muerto(skin_asesino,color_asesino,nombre_asesino)
										}
									}
								}	
								#endregion
								
								#region Contr la animacion
								if (id_jugador_asesinado == global.idLocal){
									global.jugabilidad=false
									var animacion = instance_create_layer(x,y,"Tareas",obj_contr_animacion_muerte)
									animacion.id_jugador_asesinado = id_jugador_asesinado
									animacion.id_jugador_asesino = id_jugador_asesino
									animacion.alarm[3] = 1
								}
								#endregion
							}
						}
						#endregion
					#endregion
				break
				
				
				case "jugadorEliminado":
					#region  Contr cuando alguien es eliminado
						var id_jugador_eliminado = real(ds_map_find_value(mapaDatos,"jugadorId_eliminado"))
						for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
							var jugador = ds_list_find_value(global.jugadores_lista,i)
							var id_jugador = real(ds_map_find_value(jugador,"clienteId"))
							if (id_jugador == id_jugador_eliminado){
								
								#region Contr el personaje muerto
								var id_obj = ds_map_find_value(jugador,"idObjeto")
								if (id_obj!=noone and instance_exists(id_obj)){
									//id_obj.muerto = true
									with(id_obj){
										muerto = true
										scr_config_fisica_pers_muerto()
									}
								}
								#endregion
								
							}
						}
					#endregion
				break
				
				
				case "jugadorOculto":
					#region  Contr cuando alguien se oculta o se muestra
						var id_jugador_oculto = real(ds_map_find_value(mapaDatos,"jugadorId"))
						var oculto = real(ds_map_find_value(mapaDatos,"tipo"))
						for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
							var jugador = ds_list_find_value(global.jugadores_lista,i)
							var id_jugador = real(ds_map_find_value(jugador,"clienteId"))
							if (id_jugador == id_jugador_oculto){
								#region Contr el personaje escondido o mostrado
									var id_obj = ds_map_find_value(jugador,"idObjeto")
									if (id_obj!=noone and instance_exists(id_obj)){
										if (oculto==true and id_obj.escondido==false) id_obj.escondido = true	
										else if (oculto==false and id_obj.escondido==true) id_obj.escondido = false	
									}
								#endregion
							}
						}
					#endregion
				break
				
				
				case "jugadorLimpiando":
					#region  Contr cuando alguien se oculta o se muestra
						var id_jugador_limpiando = real(ds_map_find_value(mapaDatos,"jugadorId"))
						var limpiar = real(ds_map_find_value(mapaDatos,"tipo"))
						for(i=0 ; i<ds_list_size(global.jugadores_lista) ; i++){
							var jugador = ds_list_find_value(global.jugadores_lista,i)
							var id_jugador = real(ds_map_find_value(jugador,"clienteId"))
							if (id_jugador == id_jugador_limpiando){
								#region Contr el personaje escondido o mostrado
								var id_obj = ds_map_find_value(jugador,"idObjeto")
								if (id_obj!=noone and instance_exists(id_obj)){
									if (limpiar==true and id_obj.limpiando_rastro==false) {
										id_obj.limpiando_rastro = true
										show_debug_message("El jugador esta limpiando!")
									}	
									else if (limpiar==false and id_obj.limpiando_rastro==true) {
										id_obj.limpiando_rastro = false
										show_debug_message("El jugador deja de limpiar!")
									}	
								}
								#endregion
							}
						}
					#endregion
				break
				
				
				case "jugadorReportado":
					#region Contr cuando se reporta un cuerpo
					if (global.estadoJuego=="jugando")
					{
						// Sonido
						if (global.musica==true) {
							audio_stop_all()
							audio_play_sound(snd_reportar_cuerpo,100,false)
						}
							
						global.jugabilidad = false
						global.estadoJuego = "cuerpo_reportado"
						global.id_jugador_reportado = real(ds_map_find_value(mapaDatos,"jugadorId_reportado"))
						global.id_jugador_informador = real(ds_map_find_value(mapaDatos,"jugadorId_informador"))
						
						// Contr la interfaz de cuando se reporta un cuerpo
						scr_contr_interfaz_cuerpo_reportado()
					}
					#endregion
				break
				
				
				case "botonEmergenciaApretado":
					#region Contr cuando se aprieta el boton de emergencia
					if (global.estadoJuego=="jugando")
					{	
						// Sonido
						if (global.musica==true) {
							audio_stop_all()
							audio_play_sound(snd_boton_emergencia,100,false)
						}
						
						global.jugabilidad = false
						global.estadoJuego = "boton_emergencia_apretado"
						global.id_jugador_informador = real(ds_map_find_value(mapaDatos,"jugadorId_informador"))
						
						// Contr la interfaz del btn de emergencia
						scr_contr_interfaz_btn_emergencia()
					}
					#endregion
				break
				
				
				case "comenzarDiscusion":
					#region Contr cuando comienza la discusion
						global.jugabilidad = false
						global.estadoJuego = "discusion"
						if (global.tarea_saboteada != noone) global.tarea_saboteada = noone
						// SE DEBE CREAR EL OBJ DE LA DISCUSION
						instance_create_layer(x,y,"Discusion",obj_contr_discusion)
						audio_stop_all()
					#endregion
				break
				
				
				case "contadorDiscusion":
					#region Contr el contador de las votaciones
					//if (global.votar_impostor == noone)
					//{
						if (global.comenzarVotacion>0) global.comenzarVotacion--
						else global.contadorDiscusion--
						
						if (global.estadoJuego == "discusion"){
							//show_debug_message("VOTA")
							//if (global.contadorDiscusion>1 and global.contadorDiscusion<=segundos_totales_votacion/2)  {
								if (global.comenzarVotacion<=1 and global.contadorDiscusion>1 
								and global.votar_impostor==noone and global.muerto==false)  {
								global.contr_votacion=true
							}	
							else if (global.contadorDiscusion <= 1) {
								//show_debug_message("VOTA2")
								if (global.muerto==false and global.votar_impostor==noone) {
									global.votar_impostor = "nothing"
									scr_votar_impostor(global.votar_impostor,global.idLocal)
									//show_debug_message("VOTA3")
								}
								global.contr_votacion = -1
							}	
						}
					//}	
					#endregion
				break
				
				
				case "votacionJugador":
					#region Contr cuando un jugador vota
					if (global.estadoJuego == "discusion")
					{
						if (global.musica) audio_play_sound(snd_pop,100,false)
						var id_votador = real(ds_map_find_value(mapaDatos,"jugador_votador"))
						for(i=0 ; i<instance_number(obj_btn_votar_impostor) ; i++){
							var btn = instance_find(obj_btn_votar_impostor,i)
							if (btn.id_jugador!=noone and btn.id_jugador==id_votador) btn.votacion_realizada = true
						}
					}	
					#endregion
				break
				
				
				case "tareaSaboteada":
					#region Contr cuando se sabotea una tarea
						// Sonido
						if (global.musica) audio_play_sound(snd_alarma,100,true)  
						
						global.tarea_saboteada = real(ds_map_find_value(mapaDatos,"tareaSaboteada"))	
						if (global.jugador_tipo == "IMPOSTOR") global.sabotear = false
						
						// Ccontr el alfa de la oscuridad y el radio de la luz 
						global.sombraAlfa = 0.9
						global.luzRadio_escala = 0.5
					#endregion
				break
				
				
				case "tareaArreglada":
					#region Contr cuando se arregla una tarea
						// Sonido
						if (global.musica==true and audio_is_playing(snd_alarma)) audio_stop_sound(snd_alarma) 
						
						global.tarea_saboteada = noone
						global.tarea_saboteada_x = noone
						global.tarea_saboteada_y = noone
						//if (global.jugador_tipo == "IMPOSTOR") global.sabotear = true
						
						// Contr el alfa de la oscuridad y el radio de la luz 
						scr_radio_luz_inicial()
					#endregion
				break
				
				
				case "permitirSabotage":
					#region Contr cuando se permite el sabotage
						if (global.jugador_tipo == "IMPOSTOR") {
							if !(global.sabotear) global.sabotear = true
						}
					#endregion
				break
				
				
				#region Llegan datos de actualizacion de los jugadores
				
				case "datosJugadores":
				//if (global.jugabilidad){
					
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
								//show_debug_message("Datos del jugador")
					
								for( j=0 ; j<ds_list_size(global.jugadores_lista) ; j++ ){
									var jugadorMap = ds_list_find_value(global.jugadores_lista,j)
										var idJugadorMapString = ds_map_find_value(jugadorMap,"clienteId")
										if !( is_undefined(idJugadorMapString) ) {
											var idJugadorMap = real(idJugadorMapString)
											/*show_debug_message("----------")
											show_debug_message("idJugadorMap: "+string(idJugadorMap))
											show_debug_message("idJugador: "+string(idJugador))
											show_debug_message("global.idLocal: "+string(global.idLocal))
											show_debug_message("----------")*/
											if (idJugador==idJugadorMap and idJugador!=global.idLocal){
											var jugador = real(ds_map_find_value(jugadorMap,"idObjeto"))
												if (instance_exists(jugador)){
													var objetivo_posX = real(ds_map_find_value(mapListaDatosObjetivo, "posX"))
													var objetivo_posY = real(ds_map_find_value(mapListaDatosObjetivo, "posY"))
													var objetivo_direccion = real(ds_map_find_value(mapListaDatosObjetivo, "direccion"))
													//var objetivo_muerte = real(ds_map_find_value(mapListaDatosObjetivo, "muerte"))
													//var objetivo_escondido = real(ds_map_find_value(mapListaDatosObjetivo, "oculto"))
													//var objetivo_limpiando_rastro = real(ds_map_find_value(mapListaDatosObjetivo, "limpiandoRastro"))
													
													jugador.objetivo_posX = objetivo_posX
													jugador.objetivo_posY = objetivo_posY
													jugador.objetivo_direccion= objetivo_direccion
													//jugador.objetivo_muerte= objetivo_muerte
													//jugador.objetivo_escondido= objetivo_escondido
													//jugador.objetivo_limpiando_rastro = objetivo_limpiando_rastro
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
													//var anterior_escondido = real(ds_map_find_value(mapListaDatosAnterior, "oculto"))
													//var anterior_limpiando_rastro = real(ds_map_find_value(mapListaDatosAnterior, "limpiandoRastro"))
													

													jugador.anterior_posX = anterior_posX
													jugador.anterior_posY = anterior_posY
													jugador.anterior_direccion = anterior_direccion
													//jugador.anterior_muerte = anterior_muerte
													//jugador.anterior_escondido = anterior_escondido
													//jugador.anterior_limpiando_rastro = anterior_limpiando_rastro
													
												}
											}
										}
								}

							}
						#endregion
							
					}	
				//}	
				break
				#endregion
				
				
				case "administrador":
					global.administrador=true
				break;
				
				
				case "votacionFinalizada_ningun_jugador_elegido":
					#region Contr finaliza la votacion y no se ha elegido a nadie
						global.jugabilidad = false
						global.estadoJuego = "votacion_finalizada_ningun_jugador_elegido"
						if (instance_exists(obj_contr_discusion)) instance_destroy(obj_contr_discusion)
						scr_contr_cutscene_votacion()
					#endregion
				break
				
				
				case "votacionFinalizada_un_jugador_elegido":
					#region Contr finaliza la votacion y si se ha elegido a alguien
						global.jugabilidad = false
						id_jugador_elegido = real(ds_map_find_value(mapaDatos,"idJugador_elegido"))
						tipo_jugador_elegido = ds_map_find_value(mapaDatos,"tipoJugador_elegido")
						global.estadoJuego = "votacion_finalizada_un_jugador_elegido"
						
						if (instance_exists(obj_contr_discusion)) instance_destroy(obj_contr_discusion)
						scr_contr_cutscene_votacion()
					#endregion
				break
				
				
				case "continuar_juego":
					#region Contr finaliza la votacion y si se ha elegido a alguien
						audio_stop_all()
						global.jugabilidad = true
						global.estadoJuego = "jugando"
						scr_reiniciar_variables_personajes()
						if (global.step_delta>=1) alarm[2] = room_speed/global.step_delta;
						else alarm[2] = room_speed;
					#endregion
				break
				
				
				case "juegoTerminado_impostoresGanadores":
					#region Contr cuando ganan los impostores
						global.jugabilidad = false
						global.estadoJuego = "juego_terminado_impostores_ganadores"
						juego_finalizado = true
						dibujar_efecto = true
						mensaje_juego_finalizado = ds_map_find_value(mapaDatos,"motivo")
						
						#region Crea la lista actual de los asesinos
							scr_crea_lista_actual_asesinos()
						#endregion
						
						#region Activa la transicion
							if (instance_exists(obj_transicion)) {
								obj_transicion.aumentar_alfa = true
								obj_transicion.n_transicion = 2
							}
						#endregion
						
						#region Contr las alarmas
							var tiempo = 50/global.step_delta
							if (tiempo>=1) alarm[6] = tiempo //Alarma que comienza a mostrar la pantalla final
							else alarm[6] = 25
							alarm[4] = 500/global.step_delta  //alarma que finaliza el juego  //400
						#endregion
						
						// Sonido
						if (global.musica==true) {
							audio_stop_all()
							audio_play_sound(snd_asesinos_ganadores,100,false)
						}
						
						//Contr la cantidad de monedas a ganar
						if (global.jugador_tipo == "IMPOSTOR" or global.jugador_tipo == "COMPLICE") global.contr_monedas_ganadas = 2
						else global.contr_monedas_ganadas = 1
					#endregion
				break
				
				
				case "juegoTerminado_tripulantesGanadores":
					#region Contr cuando ganan los tripulantes
						global.jugabilidad = false
						global.estadoJuego = "juego_terminado_tripulantes_ganadores"
						juego_finalizado = true
						mensaje_juego_finalizado = ds_map_find_value(mapaDatos,"motivo")
						
						#region Crea la lista actual de los tripulantes
							scr_crea_lista_actual_tripulantes()
						#endregion
						
						#region Activa la transicion
							if (instance_exists(obj_transicion)) {
								obj_transicion.aumentar_alfa = true
								obj_transicion.n_transicion = 2
							}	
						#endregion
						
						//Contr las alarmas
						var tiempo = 50/global.step_delta
						if (tiempo>=1) alarm[6] = tiempo //Alarma que comienza a mostrar la pantalla final
						else alarm[6] = 25
						alarm[4] = 500/global.step_delta  //alarma que finaliza el juego  //400
						
						// Sonido
						if (global.musica==true) {
							audio_stop_all()
							audio_play_sound(snd_tripulantes_ganadores,100,false)
						}
						
						//Contr la cantidad de monedas a ganar
						if (global.jugador_tipo == "TRIPULANTE" or global.jugador_tipo == "DETECTIVE") global.contr_monedas_ganadas = 2
						else global.contr_monedas_ganadas = 1
					#endregion
				break
				
				case "juegoEliminado":
					#region Se termina la partida
					if !(juego_finalizado){
						global.tipoDesconexion = "partidaDesconectada"
						scr_destruye_listas_locales()
						scr_destruye_listas_globales()
						scr_publicidad()
						global.conectado=false
						room_goto(rm_menu)
					}	
					#endregion
				break
			
			}
		}
	
	break
}