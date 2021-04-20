/// @description Lo dibuja
// Puede escribir su código en este editor

if (marcado) {
	if (room==rm_nivel1 or room==rm_nivel1_editor) draw_sprite_ext(spr_alcantarilla_marcador,image_index,x,y,1,1,0,c_white,1)
	else if (room==rm_nivel2 or room==rm_nivel2_editor) draw_sprite_ext(spr_alcantarilla2_marcador,image_index,x,y,1,1,0,c_white,1)
	else if (room==rm_nivel3 or room==rm_nivel3_editor) draw_sprite_ext(spr_hueco_marcador,image_index,x,y,1,1,0,c_white,1)
}	
draw_sprite(sprite_index,image_index,x,y)

