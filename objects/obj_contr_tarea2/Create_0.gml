/// @description Crea objetos, variables y valores
// Puede escribir su código en este editor


global.jugabilidad = false
global.tarea_completada = false
num_tarea = noone
saboteada = false
sonido_tarea_completada = false

#region Crea la camara (BORRAR DSP)
	/*global.tarea2 = false
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
	turno_max = 1
	turno = 0
	turno_jugador = 0
	turno_final = 4  //5
	jugar = false
	//alarm[1] = 50  // Elige los colores
	if (global.step_delta>=1) alarm[1] = 50/global.step_delta
	else alarm[1] = 50
	
	//Reinicia la variable de elegir turnos
	for(i=0 ; i<turno_final ; i++){
		color_elegido[i] = 0
		color_elegido_jugador[i] = 0
	}
	
	color = c_white
	borde = c_black
#endregion


#region crea valores y/o objetos
	btn_eliminar_tarea = instance_create_layer(cam_x+100,cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	
	btn_elegir_color1 = instance_create_layer(cam_x+529, cam_y+290, "Interfaz_tareas", obj_btn_elegir_color)
	btn_elegir_color1.color = make_color_rgb(255,77,77) //Rojo
	btn_elegir_color1.tipo_color = 1
	
	btn_elegir_color2 = instance_create_layer(cam_x+753, cam_y+290, "Interfaz_tareas", obj_btn_elegir_color)
	btn_elegir_color2.color = make_color_rgb(80,255,117) //Verde
	btn_elegir_color2.tipo_color = 2
	
	btn_elegir_color3 = instance_create_layer(cam_x+529, cam_y+514, "Interfaz_tareas", obj_btn_elegir_color)
	btn_elegir_color3.color = make_color_rgb(80,101,255) //Azul
	btn_elegir_color3.tipo_color = 3
	
	btn_elegir_color4 = instance_create_layer(cam_x+753, cam_y+514, "Interfaz_tareas", obj_btn_elegir_color)
	btn_elegir_color4.color = make_color_rgb(255,221,80) //Amarillo
	btn_elegir_color4.tipo_color = 4
	
#endregion