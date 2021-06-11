/// @description  lo dibuja

if (global.tipo_mapa_sala == 1 ) {
	draw_sprite_ext(sprite_index,1,x,y,escala_x,escala_y,0,c_white,1)
}	
else {
	draw_sprite_ext(sprite_index,0,x,y,escala_x,escala_y,0,c_white,1)
}	

draw_sprite_ext(spr_nombre_mapa1,0,x,y,0.85,0.85,0,c_white,1)




