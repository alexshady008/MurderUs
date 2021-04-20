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
	randomize()
	cant_barras = 3
	valor_max = 100
	valor_min = 0
	dif = 5
	//valor_seleccionado = irandom_range(valor_min,valor_max)
	//barras_completadas = 0
	for(i=0 ; i<cant_barras ; i++) {
		valor_barra[i] = irandom_range(valor_min,valor_max)
		valor_asignado[i] = irandom_range(valor_min,valor_max)
	}	
	color = c_white
	borde = c_black
#endregion


#region crea valores y/o objetos
	btn_eliminar_tarea = instance_create_layer(cam_x+100,cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	
	var btn_posX1 = cam_x+400
	var btn_posX2 = cam_x+880
	
	var btn_posY = cam_y+256
	btn_aumentar_barra1 = instance_create_layer(btn_posX1, btn_posY, "Interfaz_tareas", obj_btn_reducir_valor_barra)
	btn_aumentar_barra1.barra_index = 0
	btn_reducir_barra1 = instance_create_layer(btn_posX2, btn_posY, "Interfaz_tareas", obj_btn_aumentar_valor_barra)
	btn_reducir_barra1.barra_index = 0
	
	var btn_posY = cam_y+416
	btn_aumentar_barra2 = instance_create_layer(btn_posX1, btn_posY, "Interfaz_tareas", obj_btn_reducir_valor_barra)
	btn_aumentar_barra2.barra_index = 1
	btn_reducir_barra2 = instance_create_layer(btn_posX2, btn_posY, "Interfaz_tareas", obj_btn_aumentar_valor_barra)
	btn_reducir_barra2.barra_index = 1

	var btn_posY = cam_y+576
	btn_aumentar_barra3 = instance_create_layer(btn_posX1, btn_posY, "Interfaz_tareas", obj_btn_reducir_valor_barra)
	btn_aumentar_barra3.barra_index = 2
	btn_reducir_barra3 = instance_create_layer(btn_posX2, btn_posY, "Interfaz_tareas", obj_btn_aumentar_valor_barra)
	btn_reducir_barra3.barra_index = 2
#endregion


/// sonido
if global.musica == true
{ sonido = audio_play_sound(snd_interferencia,100,true) }