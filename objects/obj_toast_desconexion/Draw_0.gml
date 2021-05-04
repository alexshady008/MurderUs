/// @description Dibuja el toast
// Puede escribir su código en este editor
 // Letras
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)

draw_set_alpha(alfa)
switch(os_get_language()) {
case "es": draw_text_outline("DESCONECTADO",x,y,borde,1,1,color) break;
case "pt": draw_text_outline("DESCONECTADO",x,y,borde,1,1,color)  break;
case "it": draw_text_outline("DISCONNESSO",x,y,borde,1,1,color)  break;
case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ОТКЛЮЧЕНО",x,y,borde,1,1,color)  break;
default: draw_text_outline("DISCONNECTED",x,y,borde,1,1,color)  break;
}
draw_set_alpha(1)