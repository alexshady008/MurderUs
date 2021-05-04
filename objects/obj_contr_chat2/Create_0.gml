/// @description Variables
// Puede escribir su código en este editor

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion	


#region Variables
	if (room==rm_lobby) global.jugabilidad = false
	//global.chat = true
	global.mensaje = ""
	global.escribiendo = false
	global.A = "(A)"
	global.B = "(B)"
	global.X = "(X)"
	//mensaje_mostrado = ""
	entradaTeclado = ""
	max_caracteres = 20
	cant_mensajes_mostrados = 5
	color = c_white
	color2 = c_black
	color3 = c_dkgray
	surface = -1;
#endregion


#region Crea botones
	instance_create_depth(x-50,y+300,depth-1, obj_btn_campo_mensaje)
	instance_create_depth(x+430,y+300,depth-1, obj_btn_enviar_mensaje)
	instance_create_depth(x-480,y-320,depth-1, obj_btn_eliminar_chat)
#endregion