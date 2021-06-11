// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibujar_marcador_tareas(sprite){
	if !(sabotado){
		if (marcado) draw_sprite_ext(sprite, image_index, x, y, 1.1, 1.1, 0, c_white, 1)
	}
	else {
		draw_sprite_ext(sprite, image_index, x, y, 1.1, 1.1, 0, c_red, 1)
	}
}