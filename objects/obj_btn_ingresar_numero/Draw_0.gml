/// @description  lo dibuja

draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_grande)
if (valor!=noone) draw_text_outline(""+string(valor),x,y,c_black,1,1,c_white)
