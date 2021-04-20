/// @description Dibuja las palabras del popup
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

var posX = cam_x+640
var posY = (cam_y+360)-200

// DIbuja el campo
draw_sprite_ext(spr_popup_chico,0,posX,posY,1,1,0,c_white,1)
draw_sprite_ext(spr_campo_texto,0,posX,posY-10,1,1,0,c_white,1)

#region Dibuja el titulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY2 = posY-100
	switch(os_get_language()) {
		case "es": draw_text_outline("INGRESAR TEXTO",posX,posY2,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("INSIRA O TEXTO",posX,posY2,c_black,1,1,c_white) break;
		case "it": draw_text_outline("INSERIRE IL TESTO",posX,posY2,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ВВЕДИТЕ ТЕКСТ",posX,posY2,c_black,1,1,c_white) break;
		default: draw_text_outline("INSERT TEXT",posX,posY2,c_black,1,1,c_white) break;
	}
#endregion


#region Dibuja el titulo del campo de texto
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	if (os_get_language()!="ru") draw_set_font(fnt_normal)
	else draw_set_font(fnt_normal_ru)
	var posX2 = posX-264
	var posY3 = posY-10
	if !(global.chat) draw_text_ext_transformed_color(posX2,posY3,titulo,35,620,escala,escala,0,c_titulo,c_titulo,c_titulo,c_titulo,1)
#endregion


#region Dibuja el valor
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	//if (os_get_language()!="ru") draw_set_font(fnt_normal)
	//else draw_set_font(fnt_normal_ru)
	draw_set_font(fnt_normal_ru)
	if !(global.chat) var posX3 = posX-60
	else var posX3 = posX-264
	var posY4 = posY-10
	var escala_text = 0.85
	if (keyboard_virtual_status() == true){
		if (mostrarBarraEscritura == true) {
			draw_text_ext_transformed_color(posX3,posY4,valor+"|",35,620,escala_text,escala_text,0,c_valor,c_valor,c_valor,c_valor,1)
		} else {
			draw_text_ext_transformed_color(posX3,posY4,valor,35,620,escala_text,escala_text,0,c_valor,c_valor,c_valor,c_valor,1)
		}
	} else {
		draw_text_ext_transformed_color(posX3,posY4,valor,35,620,escala_text,escala_text,0,c_valor,c_valor,c_valor,c_valor,1)
	}
#endregion