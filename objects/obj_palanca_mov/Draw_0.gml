/// @description  lo dibuja en la pantalla
if (global.jugabilidad)
{
	
#region controla su posicion
	var contr_cam_x = camera_get_view_x(view_camera[0]) 
	var contr_cam_y = camera_get_view_y(view_camera[0]) 
	 x = contr_cam_x + 200
	 y = contr_cam_y + 600
 #endregion
 
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,image_alpha)

}