/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1);

if (!habilitado) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_grande);
	draw_text_outline(timer_string, x, y + 80, c_black, 1, 1, c_white);
}
