/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
depth = -y

//if (global.jugabilidad){

	#region  Controla la posicion 
		if ( objetivo_posX!=noone and objetivo_posY!=noone )
		{
			x += JugLerp(x,objetivo_posX,2.5)
			y += JugLerp(y,objetivo_posY,2.5)
		}
	#endregion	
	
	#region contr variables de movimientos
		// DIreccion
		if (anterior_direccion == 404) direccion = noone
		else direccion = anterior_direccion
		// Alfa
		image_alpha = anterior_direccion
		// Acciones
		//ataque = anterior_atacando
	#endregion
	
	#region controla su sprite
	
		#region Si el personaje esta corriendo
			if (direccion != noone)  {
				scr_contr_personaje_corriendo()
				
				#region Activa el sonido de correr
					if (instance_exists(obj_personaje) and global.musica==true){
						var dist = point_distance(x,y,obj_personaje.x,obj_personaje.y)
						if (dist < global.area_sonido) {
							if (sonido==noone) sonido = audio_play_sound(sonido,100,true)  
						}
					}
				#endregion
				
				//if !(audio_is_playing(sonido_correr)) scr_activar_sonido(sonido_correr,true)
			}
		#endregion
	
		#region Si el personaje esta parado
			else if (direccion == noone)  {				
				scr_contr_personaje_parado()
				//if (global.musica==true and audio_is_playing(sonido_correr)) audio_stop_sound(sonido_correr)
				
				#region Desactiva el sonido de correr
				if (sonido!=noone){
					if (instance_exists(obj_personaje) and global.musica==true){
						var dist = point_distance(x,y,obj_personaje.x,obj_personaje.y)
						if (dist >= global.area_sonido) {
							audio_stop_sound(sonido)
							sonido = noone
						}
					}
				}	
				#endregion
			}
		#endregion
		
		#region Desactiva el sonido de correr
			if (sonido!=noone){
				if (instance_exists(obj_personaje) and global.musica==true){
					var dist = point_distance(x,y,obj_personaje.x,obj_personaje.y)
					if (dist >= global.area_sonido) {
						audio_stop_sound(sonido)
						sonido = noone
					}
				}
			}	
			#endregion
	
	#endregion
	
	#region contr si esta escondido
	if (room!=rm_lobby)
	{
		if (visible){
			if (escondido){
				visible = false
				#region COntr el sprite de la alcantarilla
					var agujero =  instance_nearest(x,y,obj_agujero)
					if (agujero!=noone){
						with(agujero){
							scr_activar_sonido(snd_abrir_alcantarilla,false)
							image_index = 1
							image_speed = 0
							alarm[0] = tiempo
						}
					}
				#endregion
			}
		}
		else {
			if !(escondido){
				visible = true
				#region COntr el sprite de la alcantarilla
					var agujero =  instance_nearest(x,y,obj_agujero)
					if (agujero!=noone){
						with(agujero){
							scr_activar_sonido(snd_abrir_alcantarilla,false)
							image_index = 1
							image_speed = 0
							alarm[0] = tiempo
						}
					}
				#endregion
			}
		}
	}
	#endregion
	
	#region  Reinicia variables de accion
		if (global.estadoJuego!="jugando"){
			if (escondido) escondido=false
			if (limpiando_rastro) limpiando_rastro=false
		}
	#endregion
	
	#region CONTROLA LAS ACCIONES DEL COMPLICE
		if (complice){
			test = true
			if (muerto==false and escondido==false){	
				test2 = true
				
				#region configura variables
					pers_limpiar = noone
					pers_cabeza_limpiar = noone
					huella_limpiar = noone
					sangre_limpiar = noone
					sangre_pers_limpiar = noone
					obj_agujero_guardar_cuerpo = noone
					//limpiando_rastro = anterior_limpiando_rastro
				#endregion
	
				scr_comprobar_rastros_complice(limpiando_rastro)
			
				#region LIMPIA LOS RASTROS
				if (global.estadoJuego=="jugando"){
					if (limpiando_rastro){
						if !(contacto_con_sangre) contacto_con_sangre = true
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
			else { test2 = false }
		}
		else { test = false }
	#endregion

//}



#region  Contr cuando esta muerto
	if (muerto) {
		depth = global.depth_techo-100
	}
#endregion