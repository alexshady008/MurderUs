function scr_crea_contr_tarea(argument0) {
	var num_tarea = argument0
	var tarea = noone

	var posX = x
	var posY = y
	switch(num_tarea){
		case 0: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea1) break
		case 1: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea2) break
		case 2: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea3) break
		case 3: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea4) break
		case 4: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea5) break
		case 5: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea6) break
		case 6: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea7) break
		case 7: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea8) break
		case 8: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea9) break
		case 9: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea10) break
		case 10: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea11) break
		case 11: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea12) break
		case 12: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea13) break
		case 13: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea14) break
		case 14: tarea = instance_create_layer(posX,posY,"Tareas",obj_contr_tarea15) break
		case 15: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_analisis) tarea.tipo=1 break
		case 16: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_analisis) tarea.tipo=2 break
		case 17: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_analisis) tarea.tipo=3 break
		case 18: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_recoleccion) tarea.tipo=1 break
		case 19: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_recoleccion) tarea.tipo=2 break
		case 20: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_recoleccion) tarea.tipo=3 break
		case 21: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_mantenimiento) tarea.tipo=1 break
		case 22: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_mantenimiento) tarea.tipo=2 break
		case 23: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_mantenimiento) tarea.tipo=3 break
		case 24: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_completar) tarea.tipo=1 break
		case 25: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_completar) tarea.tipo=2 break
		case 26: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_completar) tarea.tipo=3 break
		case 27: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_rompecabeza) tarea.tipo=1 break
		case 28: tarea=instance_create_layer(posX,posY,"Tareas",obj_tareas_organizacion) tarea.tipo=1 break
	}

	return tarea


}
