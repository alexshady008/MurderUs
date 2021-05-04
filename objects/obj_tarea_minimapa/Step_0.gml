/// @description Controla el frame a dibujar
// Puede escribir su código en este editor

if (tarea!=noone and instance_exists(tarea)){
	if (tarea.sabotado) {
		image_index = 0
	}
	else {
		if (global.jugador_tipo=="IMPOSTOR") image_index = 1
		else {
			if !(global.tareas_completadas[tarea.num_tarea]) image_index = 2
			else if (global.tareas_completadas[tarea.num_tarea]) image_index = 3
		}	
	}
}

image_speed = 0