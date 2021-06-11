/// @description  lo dibuja en la pantalla
if (global.jugabilidad)
{
	
#region controla su posicion
	var contr_cam_x = camera_get_view_x(view_camera[0]) 
	var contr_cam_y = camera_get_view_y(view_camera[0]) 
	x = contr_cam_x + 1150
	y = contr_cam_y + 600
 #endregion
 
 
 if (global.muerto == false and visible==true and global.saboteando==false) {
	if (instance_exists(obj_personaje) and obj_personaje.pers_investigar!=noone and instance_exists(obj_personaje.pers_investigar)) draw_sprite_ext(spr_btnJuego_marcadores,1,x,y,escala,escala,0,c_white,1)
	draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,image_angle,c_white,1)
}

}
