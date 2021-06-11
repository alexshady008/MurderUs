/// @description  lo dibuja
#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	x = cam_x+pos_x
	y = cam_y+pos_y
#endregion


draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)


