/// @description  lo dibuja

#region controla su posicion
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	var cam_alto = camera_get_view_height(view_camera[0])
	x = (cam_x+240/global.zoom)
	y = ((cam_y+cam_alto)-150/global.zoom)
 #endregion
 
escala=3/global.zoom
image_xscale = escala
image_yscale = escala
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)

