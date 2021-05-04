/// @description  lo dibuja en la pantalla
if (global.jugabilidad)
{
	
#region controla su posicion
	var contr_cam_x = camera_get_view_x(view_camera[0]) 
	var contr_cam_y = camera_get_view_y(view_camera[0]) 
	x = contr_cam_x + 1150
	y = contr_cam_y + 600
 #endregion
 
 
if (instance_exists(obj_personaje)) {
	var huellas = obj_personaje.huella_limpiar
	var sangre = obj_personaje.sangre_limpiar
	var sangre_pers = obj_personaje.sangre_pers_limpiar
	var cadaver = obj_personaje.pers_limpiar
	var cabeza_cadaver = obj_personaje.pers_cabeza_limpiar						
	
	
	 if (global.muerto == false and visible==true and global.saboteando==false) {
		if (huellas!=noone or sangre!=noone or sangre_pers!=noone 
		or cadaver!=noone or cabeza_cadaver!=noone)
		{
			if !(obj_personaje.limpiando_rastro) draw_sprite_ext(spr_btnJuego_marcadores,1,x,y,escala,escala,0,c_white,image_alpha)
		}							
		draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,image_angle,c_white,image_alpha)
	}
}

}
