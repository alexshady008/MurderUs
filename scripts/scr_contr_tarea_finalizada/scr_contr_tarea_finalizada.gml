// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_tarea_finalizada(){
	if (num_tarea != noone) {
		if (global.tareas_completadas[num_tarea]==false){
			global.tareas_completadas[num_tarea] = true
			global.cant_tareas_completadas += 1 
			//Comprueba si arreglo todas las tareas
			if (global.cant_tareas_completadas==global.max_tareas) scr_tareas_completadas()
		}
		
		// Si la tarea fue saboteada, deja de estar saboteada
		if (saboteada==true and global.tarea_saboteada==num_tarea) scr_arreglar_tarea()
	}
}