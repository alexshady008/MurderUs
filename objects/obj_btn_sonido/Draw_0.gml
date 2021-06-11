/// @description  lo dibuja
draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,0,c_white,1)


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