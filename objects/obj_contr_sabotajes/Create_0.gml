/// @description Propiedades
// Puede escribir su código en este editor

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


#region Crea los sabotajes
	var posX_eliminar = 1200
	var posY_eliminar = 75
	var eliminar = instance_create_layer(cam_x+posX_eliminar,cam_y+posY_eliminar, "Interfaz_tareas", obj_btn_eliminar_sabotaje)
	eliminar.pos_x = posY_eliminar
	eliminar.pos_y = posY_eliminar
		 
	if (global.max_tareas<=5) var posX = 640
	else if (global.max_tareas>5) var posX = 340
	var posY = 150
	for(i=0 ; i<global.max_tareas ; i++){
		 if (i = 5) {
			posX = 940
			posY = 150
		 }
		 
		 var sabotear_tarea = instance_create_layer(cam_x+posX,cam_y+posY,"Interfaz_tareas",obj_sabotear_tarea)
		 sabotear_tarea.num_tarea_sabotear = i
		 sabotear_tarea.pos_x = posX
		 sabotear_tarea.pos_y = posY
		 posY += 100  //80
	}
#endregion



