/// @description Dibuja
// Puede escribir su código en este editor

if (id_creador!=noone and instance_exists(id_creador) ){
	if (id_creador.visible) draw_sprite_ext(sprite_index,image_index,x,y,1.5*image_xscale,1.5*image_yscale,image_angle,color_mascota,image_alpha) 
}