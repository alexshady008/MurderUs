/// @description Contr los objetos de las tareas
// Puede escribir su código en este editor

//for(i=0 ; i<global.max_tareas ; i++){
//show_debug_message("DS LIST SIZE: "+string(ds_list_size(global.lista_tareas)))
//show_debug_message("MAX TAREAS: "+string(global.max_tareas))

var cant_tareas = ds_list_size(global.lista_tareas)
for(i=0 ; i<cant_tareas ; i++){
	var tarea_id = ds_list_find_value(global.lista_tareas, i)
	if (i<global.max_tareas){
		tarea_id.num_tarea = i
	}
	else{
		if !(is_undefined(tarea_id)){
			if (instance_exists(tarea_id)) instance_destroy(tarea_id)
			//ds_list_delete(global.lista_tareas, i)
		}
	}
	
}