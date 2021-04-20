/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Dibuja la cantidad de monedas
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = 50
	draw_sprite_ext(spr_moneda_icono,0,225,posY,1,1,0,c_white,1)
	if (monedas_a_ganar==0) draw_text_outline(""+string(floor(global.monedas)),275,posY,c_black,1,1,c_white)
	else draw_text_outline(""+string(floor(global.monedas)),275,posY,borde_ganando_monedas,1,1,color_ganando_monedas)
#endregion