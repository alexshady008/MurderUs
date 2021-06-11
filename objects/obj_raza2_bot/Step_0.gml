/// @description Movimientos
// Puede escribir su código en este editor
depth = -y

//SI SE PUEDE JUGAR
if (global.jugabilidad)
{
	
	#region  Se activa la alarma para comenzar a moverse
		if !(no_comenzado){
			no_comenzado = true
			alarm[3] = irandom_range(50,400)
		}
	#endregion
	
	#region controla el tiempo en asesinar
		if (contr_asesinar>0) contr_asesinar-=0.02
	#endregion
	

	if !(escondido)
	{
		
	#region Contr la direccion 
		if (path_get_closed(path)==false) {
			if (path_position!=1) direccion = direction
			else direccion = noone
		}
		else direccion = noone
	#endregion


	#region Contr el Movimiento y el sprite 

		#region Si el personaje esta corriendo
			if (direccion != noone)  {
				moviendose = true
				sprite_index = spr_pers34_corriendo
				// Derecha 
				if (direccion>=0 and direccion<90) or (direccion>=270 and direccion<=360) image_xscale = -1	
				// Izquierda
				if (direccion>=90 and direccion<270) image_xscale = 1
				image_speed = 0.65
				dirAnterior = direccion
					
				#region Act SOnido de correr
				/*if (global.musica){
					if (sonido_correr=noone and muerto==false) {
						sonido_correr = audio_play_sound(snd_correr,100,true)  
						//audio_sound_pitch(sonido_correr, 1)
					}	
				}*/
				#endregion
			}
		#endregion
	
		#region Si el personaje esta parado
			else if (direccion == noone)  {				
				moviendose = false
				sprite_index = spr_pers34_parado
				// Derecha 
				if (dirAnterior>=0 and dirAnterior<90) or (dirAnterior>=270 and dirAnterior<=360) image_xscale = -1	
				// Izquierda
				if (dirAnterior>=90 and dirAnterior<270) image_xscale = 1
				image_speed = 0.3
					
				#region Desc SOnido de correr
				/*if (global.musica){
					if (sonido_correr!=noone) {
						audio_stop_sound(sonido_correr)  
						sonido_correr = noone
					}	
				}*/
				#endregion
			}
		#endregion
	
		#region Desactiva sonidos
			/*if (escondido==true or muerto==true){
				if (global.musica){
					if (sonido_correr!=noone) {
						audio_stop_sound(sonido_correr)  
						sonido_correr = noone
					}	
				}
			}*/
		#endregion
			
	#endregion


	#region Controla el movimiento a las alcantarillas
		if (moverse_alcantarilla==false and perseguir_jugador==false){
			var cant_alcantarillas = instance_number(obj_agujero)
			if (cant_alcantarillas>1){
				var anterior_num_alcantarilla = num_alcantarilla_aleatoria
				num_alcantarilla_aleatoria = irandom_range(0,cant_alcantarillas-1)
				while(num_alcantarilla_aleatoria==anterior_num_alcantarilla) num_alcantarilla_aleatoria = irandom_range(0,cant_alcantarillas-1)
				var alcantarilla_elegida = instance_find(obj_agujero, num_alcantarilla_aleatoria)
				path_activado = scr_path_hacia_objeto(alcantarilla_elegida.x, alcantarilla_elegida.y)
		
				if (path_activado) { moverse_alcantarilla = true}
			}
		}
	#endregion
	
	
	#region Controla el ataque a los tripulantes
		if (contr_asesinar==false){
			var tripulante = instance_nearest(x,y,obj_personaje_bot)
			if (tripulante!=noone and instance_exists(tripulante)){
				if (point_distance(x,y,tripulante.x,tripulante.y) <= dist_asesinar){
					contr_asesinar = tiempo_asesinar
					with(tripulante) scr_asesinar_bot()
				}
			}
		}
	#endregion
	
	
	#region Controla el ataque y el seguimiento al jugador
	if (global.jugador_tipo != "IMPOSTOR" and contr_asesinar==false){
		var jugador = instance_nearest(x,y,obj_personaje)
		if (jugador!=noone and instance_exists(jugador) and jugador.escondido==false){
			
			#region Sigue y asesina al jugador
				//if !(perseguir_jugador){
				var distancia = point_distance(x,y,jugador.x,jugador.y)
				
				#region Sigue al jugador
					if (distancia <= dist_seguir_jugador  and  distancia > dist_asesinar){
						path_activado = scr_path_hacia_objeto(jugador.x, jugador.y)
						if (path_activado) { 
							//perseguir_jugador = true
							moverse_alcantarilla = false
						}
					}
				#endregion
				
				#region Asesina al jugador
					if (distancia <= dist_asesinar){
						global.jugabilidad=false
						var animacion = instance_create_layer(x,y,"Tareas",obj_contr_animacion_muerte)
						// Variables del asesinado
						animacion.skin_asesinado = jugador.skin
						animacion.contrColor_asesinado = jugador.contrColor  
						// Variables del asesino
						animacion.skin_asesino = skin
						animacion.alarm[4] = 1
						// Destruye al personaje
						with(jugador) scr_asesinar_bot()
					}
				#endregion
				
				//}
			#endregion
			
			
		}
	}	
	#endregion

	}

}








