/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala-(escala/4),escala-(escala/4),0,c_white,1)



 // Letras
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_grande)

//draw_text_outline("SINGLEPLAYER",x,y,borde,1,1,color)
var posY = y-5

switch(os_get_language()) {
case "es": draw_text_outline("PRACTICAR",x,posY,borde,1,1,color) break;
case "pt": draw_text_outline("PRÁTICA",x,posY,borde,1,1,color) break;
case "it": draw_text_outline("PRATICA",x,posY,borde,1,1,color) break;
case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("испытание",x,posY,borde,1,1,color) break;
default: draw_text_outline("PRACTICE",x,posY,borde,1,1,color) break;
}