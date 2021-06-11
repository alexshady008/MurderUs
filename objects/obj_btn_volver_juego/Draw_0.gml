/// @description Lo dibuja
// Puede escribir su código en este editor
if (global.jugabilidad)
{
	
#region controla su posicion
	//if (global.modo == "online") {
		var contr_cam_x = camera_get_view_x(view_camera[0]) 
		var contr_cam_y = camera_get_view_y(view_camera[0]) 
		x = contr_cam_x + 1216
		y = contr_cam_y + 64
	//}
 #endregion
 
 draw_sprite(sprite_index,0,x,y)
 
}