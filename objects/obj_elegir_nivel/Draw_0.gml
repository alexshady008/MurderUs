/// @description Se dibuja
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index,0, x,y, escala, escala, 0, c_white, 1)

if (nivel != noone){
	if !(file_exists(working_directory + global.nivel_editor[nivel])){
		draw_sprite_ext(sprite_index,0, x,y, escala, escala, 0, c_black, 0.65)
	}
}