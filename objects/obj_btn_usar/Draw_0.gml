/// @description  lo dibuja en la pantalla
if (global.jugabilidad)
{
	
#region controla su posicion
	var contr_cam_x = camera_get_view_x(view_camera[0]) 
	var contr_cam_y = camera_get_view_y(view_camera[0]) 
	
	if (room!=rm_lobby){
		if (global.jugador_tipo == "TRIPULANTE") x = contr_cam_x + 1150
		else x = contr_cam_x + 1010
		y = contr_cam_y + 600
	}
	else {
		x = contr_cam_x+900
		y = contr_cam_y+600
	}
 #endregion
 
 if (instance_exists(obj_personaje) and obj_personaje.obj_usar!=noone and global.saboteando==false) draw_sprite_ext(spr_btnJuego_marcadores,1,x,y,escala,escala,0,c_white,1)
 draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,image_angle,c_white,1)
 
}