/// @description Crea objetos, variables y valores
// Puede escribir su código en este editor


global.jugabilidad = false
global.tarea_completada = false
num_tarea = noone
saboteada = false
sonido_tarea_completada = false

#region Crea la camara (BORRAR DSP)
	/*global.tarea7 = false
	global.cant_tareas_completadas = 0 
	global.alfaFondo = 0.65
	global.camara = camera_create_view((room_width/2)-640,(room_height/2)-360,1280,720,0,-1,-1,-1,640,360)
	view_camera[0] = global.camara*/
#endregion

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


#region Variables
	valores_completados = 0
	max_valores = 3
	max_valores_elegidos = 9
	for (i=0 ; i<max_valores ; i++) {
		randomize()
		valor_elegido[i] = irandom_range(0,max_valores_elegidos)
		valor[i] = 0
	}	
	//valor_actual = 0
	color = c_white
	borde = c_black
#endregion


#region crea valores y/o objetos
	btn_eliminar_tarea = instance_create_layer(cam_x+100,cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	
	btn1_sumar_valor = instance_create_layer(cam_x+448,cam_y+336, "Interfaz_tareas", obj_btn_sumar_valor)
	btn1_sumar_valor.index = 0
	btn1_restar_valor = instance_create_layer(cam_x+448,cam_y+576, "Interfaz_tareas", obj_btn_restar_valor)
	btn1_restar_valor.index = 0
	
	btn2_sumar_valor = instance_create_layer(cam_x+640,cam_y+336, "Interfaz_tareas", obj_btn_sumar_valor)
	btn2_sumar_valor.index = 1
	btn2_restar_valor = instance_create_layer(cam_x+640,cam_y+576, "Interfaz_tareas", obj_btn_restar_valor)
	btn2_restar_valor.index = 1
	
	btn3_sumar_valor = instance_create_layer(cam_x+832,cam_y+336, "Interfaz_tareas", obj_btn_sumar_valor)
	btn3_sumar_valor.index = 2
	btn3_restar_valor = instance_create_layer(cam_x+832,cam_y+576, "Interfaz_tareas", obj_btn_restar_valor)
	btn3_restar_valor.index = 2
#endregion