/// @description Lo dibuja
// Puede escribir su código en este editor

if !(sabotado){
	if (marcado) draw_sprite_ext(spr_tareas_marcador,image_index,x,y,1.1,1.1,0,c_white,1)
}
else {
	draw_sprite_ext(spr_tareas_marcador,image_index,x,y,1.1,1.1,0,c_red,1)
}

draw_sprite_ext(sprite_index, image_index, x, y+10, 1, 1, 0, c_black, 0.35)
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)

//draw_text(x,y,string(num_tarea))