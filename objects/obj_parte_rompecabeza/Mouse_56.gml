/// @description Se suelta la pieza
// Puede escribir su código en este editor
if (presionado==true and completado==false){
	presionado = false
	escala = 1
	depth = depth_inicial 
	
	#region Contr si se completa 
		if (posX!=noone and posY!=noone) {
			var distancia = point_distance(x,y,posX,posY)
			// SI se completa la pieza
			if (distancia<=dist_completar) {
				if (instance_exists(obj_tareas_rompecabeza)) obj_tareas_rompecabeza.piezas_completadas++
				completado = true
				x = posX
				y = posY
				//sonido
				if (global.musica) audio_play_sound(snd_swosh,100,false) 
			}
			// Si no se completa, vuelve a su posicion inicial
			else {
				x = posX_inicial
				y = posY_inicial
			}
			
		}
	#endregion
}