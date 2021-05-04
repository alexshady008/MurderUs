/// @description Dibuja la transicion
// Puede escribir su código en este editor

if !(global.editor) {

	#region Propiedades de la camara
		cam_x = camera_get_view_x(view_camera[0]) 
		cam_y = camera_get_view_y(view_camera[0]) 
		cam_ancho = camera_get_view_width(view_camera[0])
		cam_alto = camera_get_view_height(view_camera[0])
	#endregion

	#region Dibuja la transicion
		draw_set_alpha(global.alfa_transicion)
		draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,(cam_y+cam_alto)+100,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
	#endregion
}