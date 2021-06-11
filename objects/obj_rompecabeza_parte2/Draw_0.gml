/// @description Lo dibuja
// Puede escribir su código en este editor

if !(completado){
	if (bloque) draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)
	else draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_dkgray,1)
}
else {
	draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)
}