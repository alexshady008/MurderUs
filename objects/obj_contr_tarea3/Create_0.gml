/// @description Crea objetos, variables y valores
// Puede escribir su código en este editor


global.jugabilidad = false
global.tarea_completada = false
num_tarea = noone
saboteada = false
sonido_tarea_completada = false

#region Crea la camara (BORRAR DSP)
	/*global.tarea3 = false
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
	ingresar = true
	max_cant_valor = 5
	cant_valor = 0
	valor_string = ""
	for(i=0 ; i<max_cant_valor ; i++){
		var valor = irandom_range(1,9) 
		var ultima_pos = string_length(valor_string)+1
		var valor_a_insertar = string(valor)
		valor_string = string_insert(valor_a_insertar,valor_string,ultima_pos)
	}
	valor_jugador = ""
	color = c_white
	borde = c_black
#endregion


#region crea valores y/o objetos
	btn_eliminar_tarea = instance_create_layer(cam_x+100,cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	
	
	var btn_posY = cam_y+320
	var btn_posY2 = cam_y+448
	var btn_posY3= cam_y+576
	
	var btn_posX = cam_x+512
	var btn_posX2 = cam_x+640
	var btn_posX3 = cam_x+768
	
	btn_ingresar_num1 = instance_create_layer(btn_posX, btn_posY, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num1.valor = 1
	btn_ingresar_num2 = instance_create_layer(btn_posX2, btn_posY, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num2.valor = 2
	btn_ingresar_num3 = instance_create_layer(btn_posX3, btn_posY, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num3.valor = 3
	
	btn_ingresar_num4 = instance_create_layer(btn_posX, btn_posY2, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num4.valor = 4
	btn_ingresar_num5 = instance_create_layer(btn_posX2, btn_posY2, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num5.valor = 5
	btn_ingresar_num6 = instance_create_layer(btn_posX3, btn_posY2, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num6.valor = 6
	
	btn_ingresar_num7 = instance_create_layer(btn_posX, btn_posY3, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num7.valor = 7
	btn_ingresar_num8 = instance_create_layer(btn_posX2, btn_posY3, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num8.valor = 8
	btn_ingresar_num9 = instance_create_layer(btn_posX3, btn_posY3, "Interfaz_tareas", obj_btn_ingresar_numero)
	btn_ingresar_num9.valor = 9
	
#endregion