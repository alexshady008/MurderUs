/// @description Dibuja la interfaz
// Puede escribir su código en este editor

#region Dibuja la pantalla negra
	draw_set_color(c_black)
	draw_set_alpha(0.75)
	draw_rectangle(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,0)
	draw_set_alpha(1)
#endregion
