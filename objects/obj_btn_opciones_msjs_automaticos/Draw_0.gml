/// @description Lo dibuja
// Puede escribir su código en este editor

if (tipo!=noone)
{
//if (tipo==1){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
	
	#region Dibuja el icono
		if (global.opciones_msjs<1 and sprite_icono!=noone) {
			var posX_icono= x + lengthdir_x(125,image_angle+90)
			var posY_icono = y + lengthdir_y(125,image_angle+90)
			var escala = 1
			draw_sprite_ext(sprite_icono, 0, posX_icono, posY_icono, escala, escala, 0, c_white, 1)
		}	
	#endregion
	
	#region Propiedades de las palabras
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(cadena_fuente)
		var posX_letra = x + lengthdir_x(250,image_angle+90)
		var posY_letra = y + lengthdir_y(250,image_angle+90)
	#endregion
	
	#region Dibuja las palabras
		var sep = 35
		var w = 200
		draw_text_outline4(cadena, posX_letra, posY_letra, c_black, 1, 1, c_white, sep, w, cadena_escala, 0)
	#endregion
	
}