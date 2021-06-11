/// @description  lo dibuja en la pantalla
if (global.jugabilidad)
{
	
#region controla su posicion
	var contr_cam_x = camera_get_view_x(view_camera[0]) 
	var contr_cam_y = camera_get_view_y(view_camera[0]) 
	x = contr_cam_x + 1216
	y = contr_cam_y + 250
 #endregion
 
 
 if (global.sabotear==true and global.saboteando==false) {
	draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,image_angle,c_white,1)
 }
else {
	draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,image_angle,c_white,0.5)
}

}

