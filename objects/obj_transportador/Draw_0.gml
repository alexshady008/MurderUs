/// @description Lo dibuja
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index, index, x, y+global.pos_sombra_objetos2, 1, 1, 0, c_black, 0.35)
draw_sprite_ext(sprite_index, index, x, y, 1, 1, 0, c_white, 1)

/*
if (retener_personaje) draw_sprite_ext(sprite_index, index, x, y, 1, 1, 0, c_red, 1)
else draw_sprite_ext(sprite_index, index, x, y, 1, 1, 0, c_green, 1)