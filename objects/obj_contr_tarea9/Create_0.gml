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
	max_bloques_armados = 4
	bloques_armados = 0
	color = c_white
	borde = c_black
#endregion


#region crea valores y/o objetos
	btn_eliminar_tarea = instance_create_layer(cam_x+100,cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	
	//Crea los NO bloques
	instance_create_layer(cam_x+640,cam_y+445, "Interfaz_tareas", obj_rompecabeza_parte1)
	instance_create_layer(cam_x+666,cam_y+446, "Interfaz_tareas", obj_rompecabeza_parte2)
	instance_create_layer(cam_x+639,cam_y+418, "Interfaz_tareas", obj_rompecabeza_parte3)
	instance_create_layer(cam_x+707,cam_y+378, "Interfaz_tareas", obj_rompecabeza_parte4)
	
	//Crea los bloques
	randomize()
	var bloque1 = instance_create_layer(cam_x+irandom_range(0,540),cam_y+irandom_range(400,670), "Interfaz_tareas", obj_rompecabeza_parte1)
	bloque1.bloque = true
	var bloque2 = instance_create_layer(cam_x+irandom_range(740,1230),cam_y+irandom_range(400,670), "Interfaz_tareas", obj_rompecabeza_parte2)
	bloque2.bloque = true
	var bloque3 = instance_create_layer(cam_x+irandom_range(0,540),cam_y+irandom_range(150,320), "Interfaz_tareas", obj_rompecabeza_parte3)
	bloque3.bloque = true
	var bloque4 = instance_create_layer(cam_x+irandom_range(740,1230),cam_y+irandom_range(150,320), "Interfaz_tareas", obj_rompecabeza_parte4)
	bloque4.bloque = true
	
	
#endregion