/// @description Contr la posicion del boton Aceptar
// Puede escribir su código en este editor
#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion

if (btn_aceptar!=noone and instance_exists(btn_aceptar)) {
	btn_aceptar.x = cam_x+640
	btn_aceptar.y = ((cam_y+360)-40)+143
}

if (btn_si!=noone and instance_exists(btn_si)) {
	btn_si.x = cam_x+470
	btn_si.y = ((cam_y+360)-40)+143
}

if (btn_no!=noone and instance_exists(btn_no)) {
	btn_no.x = cam_x+810
	btn_no.y = ((cam_y+360)-40)+143
}