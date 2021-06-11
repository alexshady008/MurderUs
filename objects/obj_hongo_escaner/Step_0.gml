/// @description Contr 
// Puede escribir su código en este editor


if (global.editor==false and escaner_finalizado==false)
{
	#region Si no esta escaneando comprueba si hay un jugador por escanear
	if !(escaneando)
	{	
		#region Busca a la entidad y al jugador mas cercano
		jugador_cercano = noone
		entidad_cercana = noone
		if instance_exists(obj_personaje) var jugador_cercano = instance_nearest(x, y, obj_personaje)
		if instance_exists(obj_entidad_online) var entidad_cercana = instance_nearest(x, y, obj_entidad_online)
		#endregion
		
		#region Comprueba si alguno de los dos esta en el punto de escaner
		var ny = 75  //67
		var nx = 45
		var escanear = false
		if (jugador_cercano!=noone and instance_exists(jugador_cercano)){
			if (collision_rectangle(x-nx, y+(ny/2), x+nx, y+ny, jugador_cercano, false, true)) {
				if !(jugador_cercano.muerto){
					escanear = true
					pers_escaneando = jugador_cercano
					activacion_sonido = true
				}
			}	
		}
		if !(escanear) {
			if (entidad_cercana!=noone and instance_exists(entidad_cercana)){
				if (collision_rectangle(x-nx, y+(ny/2), x+nx, y+ny, entidad_cercana, false, true)) {
					if !(entidad_cercana.muerto){
						escanear = true
						pers_escaneando = entidad_cercana
					}
				}	
			}
		}	
		#endregion
		
		escaneando = escanear
	}
	#endregion
	
	#region Si esta escaneando
	else {
		
		#region Inhabilita al jugador
		if (pers_escaneando!=noone and instance_exists(pers_escaneando)) pers_escaneando.escaneando = true
		#endregion
		
		#region Crea los bloques de colision para que no salga el personaje
		if !(bloqueo_entrada){
			bloqueo_entrada = true
			//Crea los bloques de colisiones de abajo
			for (i=2 ; i<cant_bloques; i++){
				if (i==2) var posX = x-64
				else var posX = x
				bloque[i] = instance_create_depth(posX, y+120, depth, obj_techo_colision)
				bloque[i].visible = false
			}
		}
		#endregion
		
		#region Activa el sonido del escaneer
			//Contr el sonido de fondo
			if (global.musica) {
				if (sonido_fondo==noone and activacion_sonido==true) sonido_fondo = audio_play_sound(snd_electricidad,100,true)
			}	
		#endregion
		
		#region Aumenta el alfa de la luz del escaner
		if (luz_alfa<1) {
			luz_alfa += (0.003*global.step_delta)
		}	
		#endregion
		
		// Si la luz se completa, se finaliza el escaner y se comprueba si el jugador escaneado 
		// tiene manchas de asesinato o de complice
		#region
		else {
			luz_alfa = 1
			escaner_finalizado = true
			
			#region Detiene el sonido
			if (sonido_fondo!=noone and audio_is_playing(sonido_fondo)) {
				audio_stop_sound(sonido_fondo)
				sonido_fondo = noone
			}	
			#endregion
				
			#region Comprueba si el jugador escaneado estuvo en contacto con sangre
			if (pers_escaneando!=noone and instance_exists(pers_escaneando)) {
				manchado = pers_escaneando.contacto_con_sangre
				if (manchado){
					pers_escaneando.mostrar_pistas = 2
					pers_escaneando.alarm[6] = 1
				}
			}
			#endregion
				
			#region Activa la alarma para activar el escaneamiento
			var tiempo = (tiempo_reescanear/6)/global.step_delta
			if (tiempo>=1) alarm[0] = tiempo
			else alarm[0] = 1
			#endregion
			
		}
		#endregion
	}
	#endregion

}



		
		
	