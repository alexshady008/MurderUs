/// @description Lo dibuja
// Puede escribir su código en este editor
if (creador!=noone and instance_exists(creador)){
	//depth = creador.depth + 1
	x = creador.x
	y = creador.y
	image_xscale = creador.image_xscale
}

draw_sprite_ext(sprite_index, 0, x,y+6,image_xscale,1,0,c_black,0.35)
draw_sprite_ext(sprite_index, 0, x,y,image_xscale,1,0,c_white,1)
