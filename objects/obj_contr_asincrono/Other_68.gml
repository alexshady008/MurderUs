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
			var mensajeServidor = ds_map_find_value(mapaDatos,"mensaje")
			//show_debug_message("mensajeServidor: "+string(mensajeServidor))
			
			switch(mensajeServidor)
			{
				#region Contr al servidor mas cercano
					case "servidorComprobado":
						var servidor = ds_map_find_value(mapaDatos,"tipoDeServidor") 
						show_debug_message(servidor)
						if !(global.servidor_comprobado){
							switch(servidor){
								case "USATEST": global.ipServidor = global.servidorUSATest break
								case "USA": global.ipServidor = global.servidorUSA break
								case "BRASIL": global.ipServidor = global.servidorBrasil break
								case "BRASIL2": global.ipServidor = global.servidor2Brasil break
								case "EUROPA": global.ipServidor = global.servidorEuropa break
							
							}
							global.servidor_comprobado = true
						}
					break
				#endregion
				
				#region Contr la promocion del otro juego
					case "promocionOtroJuego":
					show_debug_message("mensaje: promocionOtroJuego")
						var promocion = ds_map_find_value(mapaDatos,"estadoDePromocion")
						show_debug_message(promocion)
						switch(promocion){
							case "ACEPTADO_STICKFIGHT": global.promocionar_juego = "ACEPTADO_STICKFIGHT" break;
							case "ACEPTADO_FALLRUN": global.promocionar_juego = "ACEPTADO_FALLRUN" break;
							case "ACEPTADO_STICKHEROES": global.promocionar_juego = "ACEPTADO_STICKHEROES" break;
							default: global.promocionar_juego = false break;
						}
						
						if (global.promocionar_juego != false){
							
							// Crea el boton 
							if (room==rm_menu or room==rm_menu2){
								if !(instance_exists(obj_btn_promocion_otro_juego)) instance_create_layer(96,480,"Interfaz",obj_btn_promocion_otro_juego)
							}
							
							// Crea el banner
							if (global.vecesJugado==4 or global.vecesJugado==6 or global.vecesJugado==9) {
								if (global.promocionar_juego=="ACEPTADO_FALLRUN" and global.mostrar_promocion_fallRun==true){
								if (room==rm_menu and instance_exists(obj_contr_menu)) obj_contr_menu.alarm[3] = 5 }
								if (global.promocionar_juego=="ACEPTADO_STICKFIGHT" and global.mostrar_promocion_stickFight==true){
								if (room==rm_menu and instance_exists(obj_contr_menu)) obj_contr_menu.alarm[3] = 5 }
								if (global.promocionar_juego=="ACEPTADO_STICKHEROES" and global.mostrar_promocion_stickheroes==true){
								if (room==rm_menu and instance_exists(obj_contr_menu)) obj_contr_menu.alarm[3] = 5 }
							}
						}
					break
				#endregion
				
				#region Contr cuando se comprueba un codigo de oferta
					case "codigoOfertaComprobado":
						var codigoEstado = real(ds_map_find_value(mapaDatos,"estado"))
						show_debug_message(codigoEstado)
						
						#region Desbloquea todos los skins, y vestimentas y mascotas
						if (codigoEstado)
						{
							#region Desbloquea los skins
								global.skins_comprados = true
								ini_open("comandos.ini")
								ini_write_real("jugadorDatos","skins_comprados",true)
								for ( var j=0 ; j<global.max_skins ; j++ ){
									if (global.skin_bloqueado[j]) {
										global.skin_bloqueado[j] = false 
										ini_write_real("jugadorDatos","skin_bloqueado"+string(j),false)
									}	
								}
								ini_close()
							#endregion
						
							#region Desbloquea las prendas
								global.prendas_compradas = true
								ini_open("comandos.ini")
								ini_write_real("jugadorDatos","prendas_compradas",true)
								for ( var j=0 ; j<=global.max_prendas ; j++ ){
									if (global.prenda_bloqueada[j]) {
										global.prenda_bloqueada[j] = false 
										ini_write_real("jugadorDatos","prenda_bloqueada"+string(j),false)
									}	
								}
								ini_close()
							#endregion
						
							#region Desbloquea los accesorios
								global.accesorios_comprados = true
								ini_open("comandos.ini")
								ini_write_real("jugadorDatos","accesorios_comprados",true)
								for ( var j=0 ; j<=global.max_accesorios ; j++ ){
									if (global.accesorio_bloqueado[j]) {
										global.accesorio_bloqueado[j] = false 
										ini_write_real("jugadorDatos","accesorio_bloqueado"+string(j),false)
									}	
								}
								ini_close()
							#endregion
						
							#region Desbloquea los sombreros
								global.sombreros_comprados = true
								ini_open("comandos.ini")
								ini_write_real("jugadorDatos","sombreros_comprados",true)
								for ( var j=0 ; j<=global.max_sombreros ; j++ ){
									if (global.sombrero_bloqueado[j]) {
										global.sombrero_bloqueado[j] = false 
										ini_write_real("jugadorDatos","sombrero_bloqueado"+string(j),false)
									}	
								}
								ini_close()
							#endregion
						
							#region Desbloquea las mascotas
								global.mascotas_compradas = true
								ini_open("comandos.ini")
								ini_write_real("jugadorDatos","mascotas_compradas",true)
								for ( var j=0 ; j<=global.max_mascotas ; j++ ){
									if (global.mascota_bloqueada[j]) {
										global.mascota_bloqueada[j] = false 
										ini_write_real("jugadorDatos","mascota_bloqueada"+string(j),false)
									}	
								}
								ini_close()
							#endregion
						
							#region Muestra el pop up
								scr_codigo_oferta_correcto()
							#endregion	
						}
						#endregion
						
						#region Muestra el popup del codigo incorrecto
						else {
							scr_codigo_oferta_incorrecto()
						}
						#endregion
						
					break
				#endregion
				
			}
		}
	
	break

}