/// @description Crea objetos, variables y valores
// Puede escribir su código en este editor

#region Variables 
	global.jugabilidad = false
	global.tarea_completada = false
	num_tarea = noone  //Num de tarea
	saboteada = false //Contr si la tarea fue saboteada
	tipo = 0 //El tipo de tarea  //POR DEFECTO ES 0
	sonido_tarea_completada = false
	total_objetos_organizar = false
	//total_lineas_ordenar = -1
	mov_hor = 192
	mov_vert = 208
	posX_limite_izq = 160
	posX_limite_der = 1120
	posY_limite_arriba = 176
	posY_limite_abajo = 608
#endregion

#region BORRAR
	/*global.cam_x = camera_get_view_x(view_camera[0]) 
	global.cam_y = camera_get_view_y(view_camera[0]) 
	global.cam_ancho = camera_get_view_width(view_camera[0])
	global.cam_alto = camera_get_view_height(view_camera[0])
	global.cant_tareas_completadas = 0 
	global.alfaFondo = 0.65
	global.camara = camera_create_view((room_width/2)-640,(room_height/2)-360,1280,720,0,-1,-1,-1,640,360)
	view_camera[0] = global.camara*/
#endregion

#region Contr los objetos a crearse
	btn_eliminar_tarea = instance_create_layer(global.cam_x+100,global.cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	alarm[1] = 1
#endregion