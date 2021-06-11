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
	randomize()
	angulo = irandom_range(25,335)
	tiempo = 0
	tiempo_max = 100
	color = c_white
	borde = c_black
#endregion


#region crea valores y/o objetos
	btn_eliminar_tarea = instance_create_layer(cam_x+100,cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	var punto = instance_create_layer(cam_x+640,cam_y+400, "Interfaz_tareas", obj_punto_reloj)
	punto.angulo = angulo
	instance_create_layer(cam_x+640,cam_y+400, "Interfaz_tareas", obj_aguja_reloj)
#endregion