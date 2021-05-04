/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index, 0, x, y+global.pos_sombra_objetos2, 1, 1, 0, c_black, 0.35)
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, 1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_grande)
draw_text_color(x,y+8,"03", c_white, c_white, c_white, c_white, 1)