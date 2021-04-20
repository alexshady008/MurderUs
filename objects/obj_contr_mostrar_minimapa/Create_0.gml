/// @description Propiedades
// Puede escribir su código en este editor

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion

//global.mostrar_mapa = true

var posX_eliminar = 1100  //1200
var posY_eliminar = 75
var eliminar = instance_create_layer(cam_x+posX_eliminar,cam_y+posY_eliminar, "Interfaz_tareas", obj_btn_eliminar_sabotaje)
eliminar.pos_x = posY_eliminar
eliminar.pos_y = posY_eliminar




