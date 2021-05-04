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
	valorElegido = irandom_range(0,2)
	mostrarValor = true
	valor_incorrecto = false
	valores_correctos_seleccionados = 0
	cant_valores_num[0] = 0
	cant_valores_num[1] = 0
	cant_valores_num[2] = 0
	color = c_white
	borde = c_black
	
	if (global.step_delta>=1) alarm[1] = 200/global.step_delta
	else alarm[1] = 200
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
	
	btn_elegir_valor1 = instance_create_layer(btn_posX, btn_posY, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor1.valor = 2
	cant_valores_num[btn_elegir_valor1.valor]+=1
	btn_elegir_valor2 = instance_create_layer(btn_posX2, btn_posY, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor2.valor = 0
	cant_valores_num[btn_elegir_valor2.valor]+=1
	btn_elegir_valor3 = instance_create_layer(btn_posX3, btn_posY, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor3.valor = 1
	cant_valores_num[btn_elegir_valor3.valor]+=1
	
	btn_elegir_valor4 = instance_create_layer(btn_posX, btn_posY2, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor4.valor = irandom_range(0,2)
	cant_valores_num[btn_elegir_valor4.valor]+=1
	btn_elegir_valor5 = instance_create_layer(btn_posX2, btn_posY2, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor5.valor = irandom_range(0,2)
	cant_valores_num[btn_elegir_valor5.valor]+=1
	btn_elegir_valor6 = instance_create_layer(btn_posX3, btn_posY2, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor6.valor = irandom_range(0,2)
	cant_valores_num[btn_elegir_valor6.valor]+=1
	
	btn_elegir_valor7 = instance_create_layer(btn_posX, btn_posY3, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor7.valor = irandom_range(0,2)
	cant_valores_num[btn_elegir_valor7.valor]+=1
	btn_elegir_valor8 = instance_create_layer(btn_posX2, btn_posY3, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor8.valor = irandom_range(0,2)
	cant_valores_num[btn_elegir_valor8.valor]+=1
	btn_elegir_valor9 = instance_create_layer(btn_posX3, btn_posY3, "Interfaz_tareas", obj_btn_elegir_valor)
	btn_elegir_valor9.valor = irandom_range(0,2)
	cant_valores_num[btn_elegir_valor9.valor]+=1
	
#endregion