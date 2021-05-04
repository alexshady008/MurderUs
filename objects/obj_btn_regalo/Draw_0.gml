/// @description  lo dibuja
if (ruleta_usada)
{
	draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_gray,1);
	draw_set_font(fnt_chica);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var string_ruleta_segundos = segundos_restantes;
	var string_ruleta_minutos = minutos_restantes;
	var string_ruleta_horas = horas_restantes;
	
	if (string_length(string(string_ruleta_horas)) == 1) string_ruleta_horas = "0" + string(string_ruleta_horas);
	if (string_length(string(string_ruleta_minutos)) == 1) string_ruleta_minutos = "0" + string(string_ruleta_minutos);
	if (string_length(string(string_ruleta_segundos)) == 1) string_ruleta_segundos = "0" + string(string_ruleta_segundos);
	
	draw_text(x, y + 78, string(string_ruleta_horas) + ":" + string(string_ruleta_minutos) + ":" + string(string_ruleta_segundos));
}
else
{
	draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1);
}

