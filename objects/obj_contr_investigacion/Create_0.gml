/// @description Propiedades
// Puede escribir su código en este editor

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion

#region Variables
	skin_pista = noone
	color_pista = noone
	letra_pista = noone
#endregion


#region Crea boton
	var posX_eliminar = 1200
	var posY_eliminar = 75
	var eliminar = instance_create_layer(cam_x+posX_eliminar,cam_y+posY_eliminar, "Interfaz_tareas", obj_btn_eliminar_investigacion)
	eliminar.pos_x = posY_eliminar
	eliminar.pos_y = posY_eliminar
#endregion


#region Controla la puntuacion y las pistas encontradas
	// Guarda la cantidad de pistas encontradas
	global.pistas_descubiertas_online += 1
	scr_guardar_datos("pistas_descubiertas_online", global.pistas_descubiertas_online)
	// Guarda los puntos online
	global.puntuacion_online += global.puntos_al_descubrir_pistas
	scr_guardar_datos("puntuacion_online", global.puntuacion_online)
#endregion


