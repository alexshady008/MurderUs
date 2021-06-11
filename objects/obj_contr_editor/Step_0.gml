/// @description movimientos de camara 
// Puede escribir su código en este editor

#region movimientos de camara 
	camera_set_view_size(view_camera[0],3840/global.zoom,2160/global.zoom)
	
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	var cam_ancho = camera_get_view_width(view_camera[0])
	var cam_alto = camera_get_view_height(view_camera[0])

   if ((cam_x+cam_ancho)>room_width)  camera_set_view_pos(view_camera[0],(room_width-cam_ancho), cam_y)
   if ((cam_y+cam_alto)>room_height)  camera_set_view_pos(view_camera[0],cam_x, (room_height-cam_alto))
#endregion 

//if (instance_exists(obj_contr_juego_online)) show_debug_message("EXISTE")

#region Contr variables segun la categoria de objeto
switch(global.categoria_obj)
{
	// Tareas
	case 1:   
		switch(global.mapa_elegido){
			case 1: global.max_listas_obj = 1 break;  // Mapa 1
			case 2: global.max_listas_obj = 1 break;  // Mapa 2
			case 3: global.max_listas_obj = 1 break;  // Mapa 3
		}
	break;
	// Puertas
	case 2: global.max_listas_obj = 1 break;
	// Salon Principal
	case 3: global.max_listas_obj = 2 break;
	// Dormitorio
	case 4: global.max_listas_obj = 2 break;
	// Ciencia
	case 5: global.max_listas_obj = 2 break;
	// Maquinaria
	case 6: global.max_listas_obj = 2 break;
	// Deposito
	case 7: global.max_listas_obj = 2 break;
	// Control
	case 8: global.max_listas_obj = 2 break;
	// Energia
	case 9: global.max_listas_obj = 2 break;
	// Jardin
	case 10: global.max_listas_obj = 3 break;
	// Minerales
	case 11: global.max_listas_obj = 2 break;
	// Otros
	case 12: global.max_listas_obj = 2 break;
	// Interactivos
	case 13: global.max_listas_obj = 1 break;
}
#endregion


#region
	var tareas_creadas = true
	#region Crontr que se hayan creados todas las tareas 
		for(i=0 ; i<global.max_tareas_crearse ; i++){
			if (global.tareas_creadas[i] == false) tareas_creadas = false
		}
	#endregion
	
	// SI SE CREARON TODAS LAS TAREAS CREA EL NIVEL
	if (tareas_creadas)
	{
		if (global.tutorial_editor==0){
			global.tutorial_editor=1
			ini_open("comandos.ini")
			ini_write_real("editor","tutorial_editor",global.tutorial_editor)
			ini_close()
		}
	}
#endregion