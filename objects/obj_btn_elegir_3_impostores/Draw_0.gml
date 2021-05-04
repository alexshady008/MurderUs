/// @description  lo dibuja
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)


if (global.cant_impostor_sala == 3 ) {
	draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)
	//draw_text_outline("1",x,y,borde,1,1,color)
	draw_text_color(x,y,"3",c_black,c_black,c_black,c_black,1)
}	
else {
	draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_gray,1)
	//draw_text_outline("1",x,y,borde2,1,1,color2)
	draw_text_color(x,y,"3",c_black,c_black,c_black,c_black,0.5)
}	



