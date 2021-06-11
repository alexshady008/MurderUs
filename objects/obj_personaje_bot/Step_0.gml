/// @description Movimientos
// Puede escribir su código en este editor
depth = -y

//SI SE PUEDE JUGAR
if (global.jugabilidad)
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
		if (direccion != noone and escondido==false)  {
			scr_contr_personaje_corriendo()
					
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
		else if (direccion == noone or escondido==true)  {				
			scr_contr_personaje_parado()
					
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



#region Contr el movimiento hacia las tareas
	if !(completando_tarea){
		var cant_tareas = instance_number(obj_indicador_tarea)
		if (cant_tareas>1){
			var anterior_num_tarea_aleatorio = num_tarea_aleatorio
			num_tarea_aleatorio = irandom_range(0,cant_tareas-1)
			while(num_tarea_aleatorio==anterior_num_tarea_aleatorio) num_tarea_aleatorio = irandom_range(0,cant_tareas-1)
			var tarea_elegida = instance_find(obj_indicador_tarea, num_tarea_aleatorio)
			path_activado = scr_path_hacia_objeto(tarea_elegida.x, tarea_elegida.y)
		
			if (path_activado) completando_tarea = true 
		}
	}
#endregion


}








