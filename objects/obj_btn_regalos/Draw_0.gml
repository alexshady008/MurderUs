/// @description  lo dibuja
if !(global.regaloSkins) draw_sprite_ext(spr_btn_regalo_oferta,0,x,y,escala,escala,0,c_white,1)
else {
	draw_sprite_ext(spr_btn_regalo,0,x,y,escala,escala,0,c_white,1)
	#region Muestra el tiempo restante
		draw_set_font(fnt_chica);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		var posY = y+78
	
		var string_ruleta_segundos = obj_contr_menu.segundos_restantes;
		var string_ruleta_minutos = obj_contr_menu.minutos_restantes;
		var string_ruleta_horas = obj_contr_menu.horas_restantes;
	
		if (string_length(string(string_ruleta_horas)) == 1) string_ruleta_horas = "0" + string(string_ruleta_horas);
		if (string_length(string(string_ruleta_minutos)) == 1) string_ruleta_minutos = "0" + string(string_ruleta_minutos);
		if (string_length(string(string_ruleta_segundos)) == 1) string_ruleta_segundos = "0" + string(string_ruleta_segundos);
	
		if (global.ruleta_usada) draw_text_color(x, posY, string(string_ruleta_horas) + ":" + string(string_ruleta_minutos) + ":" + string(string_ruleta_segundos), c_white, c_white, c_white, c_white, 1);
		else draw_text_color(x, posY, "00:00:00", c_white, c_white, c_white, c_white, 1)
	#endregion
}	


/*
 // Letras
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)

switch(os_get_language()) {
case "es": draw_text_outline("JUGAR",x,y,borde,1,1,color) break;
case "pt": draw_text_outline("AMIGOS",x,y,borde,1,1,color) break;
case "it": draw_text_outline("AMICI",x,y,borde,1,1,color) break;
case "ru": draw_text_outline("ДРУЗЬЯ",x,y,borde,1,1,color) break;
default: draw_text_outline("FRIENDS",x,y,borde,1,1,color) break;
}