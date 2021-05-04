/// @description  lo dibuja
#region Propiedades de la camara
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	x = cam_x+85
	y = cam_y+85
#endregion


draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)


