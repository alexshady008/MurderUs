/// @description Crea los botones
// Puede escribir su código en este editor

#region Propiedades de la camara
	 cam_x = camera_get_view_x(view_camera[0]) 
	 cam_y = camera_get_view_y(view_camera[0]) 
	 cam_ancho = camera_get_view_width(view_camera[0])
	 cam_alto = camera_get_view_height(view_camera[0])
#endregion


global.opciones_msjs = false
global.etapa_msjs = 1
global.max_etapa_mjes = 1


#region Crea a los botones
	var cant_max_botones = 6
	var profundidad = depth-1
	var rotacion = 0
	var rot_aumento = 60
	for (i=0 ; i<cant_max_botones ; i++){
		var btn_opciones = instance_create_depth(cam_x+640, cam_y+360, profundidad, obj_btn_opciones_msjs_automaticos)
		btn_opciones.image_angle = rotacion
		btn_opciones.tipo = i+1
		rotacion += rot_aumento
	}
	
	instance_create_depth(cam_x+640, cam_y+360, profundidad-1, obj_circulo_central_msjs_automaticos)
	instance_create_depth(cam_x+1040, cam_y+575, profundidad-1, obj_volver_msjes_automaticos)
	instance_create_depth(cam_x+100, cam_y+575, profundidad-1, obj_btn_jugadores_msjes_automatico)
	instance_create_depth(cam_x+100, cam_y+475, profundidad-1, obj_btn_localizaciones_msjes_automatico)
#endregion