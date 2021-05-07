function scr_buscar_tareas(argument0) {
	var dist = argument0
	
	// Busca si hay cerca un boton de emergencia
	var buscar_obj = instance_nearest(x,y,obj_boton_emergencia)
	// Busca si hay cerca un boton para cambiar la vestimenta
	if (buscar_obj==noone or point_distance(x,y,buscar_obj.x,buscar_obj.y)>=dist)  { buscar_obj = instance_nearest(x,y,obj_cambiar_vestimenta) }
	// Busca si hay cerca un boton de la maquina para ver el mapa
	if (buscar_obj==noone or point_distance(x,y,buscar_obj.x,buscar_obj.y)>=dist)  { buscar_obj = instance_nearest(x,y,obj_maquina_ver_minimapa_personajes) }
	// Busca si hay cerca un boton de la maquina para ver las camaras
	if (buscar_obj==noone or point_distance(x,y,buscar_obj.x,buscar_obj.y)>=dist)  { buscar_obj = instance_nearest(x,y,obj_monitores_ver_camaras) }
	// Busca si hay cerca una tarea
	if (buscar_obj==noone or point_distance(x,y,buscar_obj.x,buscar_obj.y)>=dist) {
		for(i=0 ; i<global.max_tareas ; i++){
			var tarea_id = ds_list_find_value(global.lista_tareas, i)
			if !(is_undefined(tarea_id)){
				if (instance_exists(tarea_id) and point_distance(x,y,tarea_id.x,tarea_id.y)<dist) {
					buscar_obj = tarea_id
					break
				}
			}
		}
	}
	// Si no hay nada cerca
	if (buscar_obj==noone or point_distance(x,y,buscar_obj.x,buscar_obj.y)>=dist)  { buscar_obj = noone }
	
	return buscar_obj


}



