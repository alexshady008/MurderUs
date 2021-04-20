/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//if (marcado) draw_sprite_ext(spr_boton_emergencia_marcador,image_index,x,y,1.1,1.1,0,c_white,1)

draw_sprite_ext(sprite_index, 0, x, y+10, 1, 1, 0, c_black, 0.35)
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, 1)

if (marcado) draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_lime, 0.35)