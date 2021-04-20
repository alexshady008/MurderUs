/// @description Lo dibuja
// Puede escribir su código en este editor

#region controla su posicion
	if (global.modo == "online") {
		var contr_cam_x = camera_get_view_x(view_camera[0]) 
		var contr_cam_y = camera_get_view_y(view_camera[0]) 
		x = contr_cam_x + 1216
		if !(posicion_discusion) y = contr_cam_y + 312  //192
		else y = contr_cam_y + 195  //75
		
	}
 #endregion
 
 
 draw_sprite(sprite_index,0,x,y)
 
 if (global.muerto)   draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_black,0.5)