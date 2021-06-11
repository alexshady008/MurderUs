// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_nombre_habitacion(){
	
	#region Propiedades de la camara
		var cam_x = camera_get_view_x(view_camera[0]) 
		var cam_y = camera_get_view_y(view_camera[0]) 
	#endregion
	
	if !(global.ver_camaras)
	{
		if (mostrar_nombre)
		{
			var posX = cam_x+640
			var posY = cam_y+670
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			if (os_get_language()!="ru") draw_set_font(fnt_grande)
			else draw_set_font(fnt_grande_ru)
	
			draw_text_outline(nombre,posX,posY,c_black,1,1,c_white)
		}
	}
}