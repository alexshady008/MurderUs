/// @description Lo dibuja
// Puede escribir su código en este editor

//if (marcado) draw_sprite_ext(spr_tareas_marcador,image_index,x,y,1.1,1.1,0,c_white,1)

draw_sprite_ext(sprite_index, index, x, y+10, 1, 1, 0, c_black, 0.35)
draw_sprite_ext(sprite_index, index, x, y, 1, 1, 0, c_white, 1)

if (marcado) draw_sprite_ext(sprite_index, index, x, y, 1, 1, 0, c_lime, 0.25)