/// @description Dibuja el mensaje
// Puede escribir su código en este editor
#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


// Dibuja la pantalla negra
draw_set_color(c_black)
draw_set_alpha(alfa)
draw_rectangle(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,0)
draw_set_alpha(1)

//Prop de las letras
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (os_get_language()!="ru") draw_set_font(fnt_normal)
else draw_set_font(fnt_normal_ru)
var posX = cam_x+640
var posY = (cam_y+360)-40


// DIbuja el mensaje
var posY_msg = posY-50
switch(tipoMsg){
	
	case "msgChico":
		#region
			if (os_get_language()!="ru") draw_set_font(fnt_grande)
			else draw_set_font(fnt_grande_ru)
			draw_sprite_ext(spr_popup_mensaje_chico,0,posX,posY,escala,escala,0,c_white,1)
			draw_text_ext_transformed_color(posX,posY_msg,msg,45,825,1,1,0,c_letra,c_letra,c_letra,c_letra,1)
			//draw_text_ext_transformed_color(posX,posY_msg,msg,55,800,1,1,0,c_letra,c_letra,c_letra,c_letra,1)
		#endregion
	break;
	
	case "msgMediano":
		#region
			draw_sprite_ext(spr_popup_mensaje_chico,0,posX,posY,escala,escala,0,c_white,1)
			draw_text_ext_transformed_color(posX,posY,msg,45,800,0.9,0.9,0,c_letra,c_letra,c_letra,c_letra,1)
		#endregion
	break;
	
	case "msgGrande":
		#region
			draw_sprite_ext(spr_popup_mensaje_chico,0,posX,posY,escala,escala,0,c_white,1)
			draw_text_ext_transformed_color(posX,posY_msg,msg,35,800,0.8,0.8,0,c_letra,c_letra,c_letra,c_letra,1)
		#endregion
	break;
	case "msgMuyGrande":
		#region
			draw_sprite_ext(spr_popup_mensaje_chico,0,posX,posY,escala,escala,0,c_white,1)
			draw_text_ext_transformed_color(posX,posY_msg,msg,25,800,0.75,0.75,0,c_letra,c_letra,c_letra,c_letra,1)
		#endregion
	break;
}