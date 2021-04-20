/// @description  lo dibuja

#region controla su posicion
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	x = (cam_x+(1920/global.zoom))
	y = (cam_y+(120/global.zoom))
 #endregion
 
escala=3/global.zoom 
image_xscale = escala
image_yscale = escala
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale*yscale,0,c_white,image_alpha)
//draw_sprite_ext(sprite_index,0,x,y,escala,escala*yscale,0,c_white,image_alpha)

