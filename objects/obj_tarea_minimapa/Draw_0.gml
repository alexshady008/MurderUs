/// @description Dibuja a la tarea en el minimap
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,0,c_white,1)

if (global.sabotear==false or global.muerto==true) draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,0,c_black,0.65)