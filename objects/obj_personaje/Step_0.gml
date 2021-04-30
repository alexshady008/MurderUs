/// @description Movimientos
// Puede escribir su código en este editor

#region COntr la fuerza de movimiento y la profundidad
	depth = -y
	if (complice==true and bolsa_cadaver!=noone and instance_exists(bolsa_cadaver)) bolsa_cadaver.depth = depth+1
	
	fuerza = 7000*(global.step_delta)  //2000
	//fuerza = 2000  //2000
	velFuerza = fuerza;  // Fuerza de velocidad 
	velFuerza2 = velFuerza/1.5  //Fuerza de velocidad menor  /2
#endregion

#region /// Controla que no salga de la pantalla
	phy_position_x = median( 24, phy_position_x, room_width-24 );  
	phy_position_y = median( 24, phy_position_y, room_height-24 );  
#endregion

#region  Reinicia variables de accion
	if (global.estadoJuego!="jugando"){
		if (escondido) escondido=false
		if (limpiando_rastro) limpiando_rastro=false
	}
#endregion


//SI SE PUEDE JUGAR
if (global.jugabilidad)
{

#region Contr la direccion
	if (contr_movimiento) direccion = global.direccion
	else direccion = noone
	//accion = global.ataque
#endregion

#region Contr el Movimiento y el sprite

	#region Si el personaje esta corriendo
		if (direccion != noone and escondido==false and escaneando==false)  {
			scr_contr_personaje_corriendo()
					
			#region Act SOnido de correr
			if (global.musica){
				if (sonido_correr=noone and muerto==false) {
					sonido_correr = audio_play_sound(snd_correr,100,true)  
					//audio_sound_pitch(sonido_correr, 1)
				}	
			}
			#endregion
		}
	#endregion
	
	#region Si el personaje esta parado
		else if (direccion == noone or escondido==true)  {				
			scr_contr_personaje_parado()
					
			#region Desc SOnido de correr
			if (global.musica){
				if (sonido_correr!=noone) {
					audio_stop_sound(sonido_correr)  
					sonido_correr = noone
				}	
			}
			#endregion
		}
	#endregion
	
	#region Desactiva sonidos
		if (escondido==true or muerto==true){
			if (global.musica){
				if (sonido_correr!=noone) {
					audio_stop_sound(sonido_correr)  
					sonido_correr = noone
				}	
			}
		}
	#endregion
			
#endregion

#region CONTROLA ACCIONES GENERALES 

	#region variables
		pers_asesinar = noone
		pers_reportar = noone
		pers_investigar = noone
		pers_limpiar = noone
		pers_cabeza_limpiar = noone
		huella_limpiar = noone
		sangre_limpiar = noone
		sangre_pers_limpiar = noone
		obj_agujero_guardar_cuerpo = noone
		obj_usar = noone
	#endregion
		
	#region  Contr cuando esta muerto
		if (muerto==true) {
			depth = global.depth_techo-100
			global.muerto = true
		}
	#endregion
		
	#region Contr cuando hay un cuerpo para reportar
		if (muerto==false and escondido==false){
			var pers_muerto = instance_nearest(x,y,obj_personaje_muerto)
			if (pers_muerto!=noone and pers_muerto.visible==true){
				var dist = point_distance(x,y,pers_muerto.x,pers_muerto.y)
				if (dist<dist_accionar){
					pers_reportar = pers_muerto
				}
			}
		}
	#endregion
	
	#region  Comprueba si hay una tarea para realizar u otro objeto
		if !(escondido){
			var obj_accion = scr_buscar_tareas(dist_accionar)
			if (obj_accion!=noone){
				var dist = point_distance(x,y,obj_accion.x,obj_accion.y)
				//if (dist < dist_accionar/2){
				if (dist < dist_accionar){

					#region Si es una tarea
						if (obj_accion.tipo=="tarea"){
							var tarea = obj_accion.num_tarea
							// Si NO es el impostor, comprueba si la tarea no fue completada 
							if (global.jugador_tipo=="TRIPULANTE"
								or global.jugador_tipo=="DETECTIVE"
									or global.jugador_tipo=="COMPLICE") {
									if (obj_accion.sabotado==false){
										if (tarea<global.max_tareas){
											if (global.tareas_completadas[tarea] == false) obj_usar = obj_accion
										}
									}
									else {
										if !(muerto) obj_usar = obj_accion
									}
							}
							// Si es el impostor, comprueba si la tarea esta saboteada 
							else {
								if (obj_accion.sabotado==true and muerto==false) obj_usar = obj_accion
							}
						}
					#endregion
					
					#region Si es el boton de emergencia
						else if (obj_accion.tipo=="btn_emergencia" and muerto==false and global.tarea_saboteada == noone){
							if (global.usar_btn_emergencia<=0) obj_usar = obj_accion
						}
					#endregion
					
					#region Si es la maquina para ver el minimapa
						else if (obj_accion.tipo=="maquina" and muerto==false and global.ver_minimapa_jugadores == false){
							obj_usar = obj_accion
						}
					#endregion
					
					#region Si es la maquina para ver las camaras
						else if (obj_accion.tipo=="camaras" and muerto==false and global.ver_camaras == false){
							obj_usar = obj_accion
						}
					#endregion
					
					#region Si es para cambiar la vestimenta
						else if (obj_accion.tipo=="vestimenta"){
							obj_usar = obj_accion
						}	
					#endregion
					
					}
				}
			}
		#endregion
	
#endregion

#region CONTROLA ACCIONES DEL IMPOSTOR
	if (global.jugador_tipo == "IMPOSTOR")
	{	
		
		#region  Comprueba si hay un tripulante cerca para asesinar
			if (muerto==false and escondido==false and global.asesinar<=0){
				var pers_tripulante = instance_nearest(x,y,obj_entidad_online)
				if (pers_tripulante!=noone and pers_tripulante.impostor==false 
				and pers_tripulante.complice==false  and pers_tripulante.muerto==false){
					var dist = point_distance(x,y,pers_tripulante.x,pers_tripulante.y)
					if (dist<dist_accionar){
						pers_asesinar = pers_tripulante
					}
				}
			}
		#endregion
		
		#region  COmprueba si hay una alcantarilla
			if (muerto==false){
				var alcantarilla = instance_nearest(x,y,obj_agujero)
				if (alcantarilla!=noone){
					var dist = point_distance(x,y,alcantarilla.x,alcantarilla.y)
					if (dist<dist_accionar){
						actual_alcantarilla = alcantarilla
						obj_usar = actual_alcantarilla
					}
				}
			}
		#endregion
		
		#region  Contr cuando esta escondido
			if (escondido) {
				visible=false
				//var alcantarilla = instance_nearest(x,y,obj_agujero)
				#region Contr el proximo agujero
				if (actual_alcantarilla!=noone and instance_exists(actual_alcantarilla)){
					
					if (alcantarilla_pasada==noone){
						var cant_alcantarilla= instance_number(obj_agujero)
						for(i=0 ; i<cant_alcantarilla ; i++){
							var alcantarilla = instance_find(obj_agujero,i)
							if (alcantarilla!=actual_alcantarilla){
								var dist = point_distance(alcantarilla.x,alcantarilla.y,x,y)
								if (dist<dist_prox_alcantarilla) {
									prox_alcantarilla=alcantarilla
									if !(instance_exists(obj_ir_prox_agujero)) instance_create_layer(x,y-100,"Interfaz",obj_ir_prox_agujero)
									break;
									//obj_ir_prox_agujero.prox_agujero = agujero
								}	
							}
						}
					}
					else {
						prox_alcantarilla=alcantarilla_pasada
					}
				}
				#endregion
			}	
			else {
				visible=true
				prox_alcantarilla = noone
				alcantarilla_pasada = noone
				if (instance_exists(obj_ir_prox_agujero)) instance_destroy(obj_ir_prox_agujero)
			}	
		#endregion
	}
#endregion

#region CONTROLA ACCIONES DEL DETECTIVE
	if (global.jugador_tipo == "DETECTIVE")
	{		
		#region  COmprueba si hay personaje para reportar
			if (muerto==false and escondido==false){
				var pers = instance_nearest(x,y,obj_personaje_muerto)
				if (pers!=noone){
					var dist = point_distance(x,y,pers.x,pers.y)
					if (dist<dist_accionar){
						pers_investigar = pers
					}
				}
			}
		#endregion
	}
#endregion

#region CONTROLA LAS ACCIONES DEL COMPLICE
	if (global.jugador_tipo == "COMPLICE"){
		if (muerto==false and escondido==false){	
			
			scr_comprobar_rastros_complice(limpiando_rastro)
			
			#region LIMPIA LOS RASTROS
			if (global.estadoJuego=="jugando"){
				if (limpiando_rastro){
					scr_limpiar_rastros_asesino(huella_limpiar, sangre_limpiar, sangre_pers_limpiar, 
						pers_cabeza_limpiar, pers_limpiar)
				}
				else {
					scr_soltar_cadaver()
				}
			}
			else {
				scr_soltar_cadaver()
			}
			#endregion
		}
	}
#endregion


#region Envia constantemente datos al servidor
	if (alarma_datos_online==false){
		alarma_datos_online = true
		//alarm[5] = global.latencia*global.step_delta
		//alarm[5] = global.latencia/global.step_delta
		alarm[5] = global.latencia
	}
#endregion

}

// SI NO SE PUEDE JUGAR
else {
	if (phy_speed_x != 0)  phy_speed_x = 0;
	if (phy_speed_y != 0)  phy_speed_y = 0;
}










