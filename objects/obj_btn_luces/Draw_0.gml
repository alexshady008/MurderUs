/// @description  lo dibuja

#region controla su posicion
	if (global.modo == "online") {
		var contr_cam_x = camera_get_view_x(view_camera[0]) 
		var contr_cam_y = camera_get_view_y(view_camera[0]) 
		x = contr_cam_x + 1088
		y = contr_cam_y + 64
	}
 #endregion
 
 
draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,0,c_white,1)


