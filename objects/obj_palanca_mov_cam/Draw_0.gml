/// @description  lo dibuja
#region controla su posicion
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	var cam_ancho = camera_get_view_width(view_camera[0])
	var cam_alto = camera_get_view_height(view_camera[0])
	x = ((cam_x+cam_ancho)-300/global.zoom)  //100
	y = ((cam_y+cam_alto)-300/global.zoom)  //100
 #endregion

escala=3/global.zoom
image_xscale = escala
image_yscale = escala
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)


