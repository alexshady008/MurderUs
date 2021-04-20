/// @description Crea objetos, variables y valores
// Puede escribir su código en este editor


global.jugabilidad = false
global.tarea_completada = false
num_tarea = noone
saboteada = false
sonido_tarea_completada = false

#region Crea la camara (BORRAR DSP)
	/*global.tarea1 = false
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
	cant_barras = 2
	posX_barra = cam_x+640
	posX_linea = cam_x+640

	randomize()
	posY_barra[0] = cam_y+irandom_range(175,375)
	posY_linea[0] = cam_y+irandom_range(224,375)
	
	posY_barra[1] = cam_y+irandom_range(425,576)
	posY_linea[1] = cam_y+irandom_range(425,625)
	
	color = c_white
	borde = c_black
#endregion


#region crea valores y/o objetos
	btn_eliminar_tarea = instance_create_layer(cam_x+100,cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	
	var btn_posX1 = cam_x+400
	var btn_posX2 = cam_x+880
	
	btn_mover_linea1 = instance_create_layer(btn_posX1, posY_linea[0], "Interfaz_tareas", obj_btn_mover_linea)
	btn_mover_linea1.linea_index = 0
	btn_mover_linea1.valor_y_min = cam_y+175
	btn_mover_linea1.valor_y_max = cam_y+375
	btn_mover_linea1.color_btn =  make_color_rgb(255,120,120)
	
	btn_mover_linea2 = instance_create_layer(btn_posX2, posY_linea[1], "Interfaz_tareas", obj_btn_mover_linea)
	btn_mover_linea2.linea_index = 1
	btn_mover_linea2.valor_y_min = cam_y+425
	btn_mover_linea2.valor_y_max = cam_y+625
	btn_mover_linea2.color_btn = make_color_rgb(153,255,177)

#endregion


/// sonido
if global.musica == true
{ sonido = audio_play_sound(snd_interferencia,100,true) }