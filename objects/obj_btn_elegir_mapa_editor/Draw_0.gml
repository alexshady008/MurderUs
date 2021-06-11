/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala_x,escala_y,0,c_white,1)

if (mapa!=noone){
	switch(mapa){
		case 1: draw_sprite_ext(spr_nombre_mapa1,0,x,y,1,1,0,c_white,1) break;
		case 2: draw_sprite_ext(spr_nombre_mapa2,0,x,y,1,1,0,c_white,1) break;
		case 3: draw_sprite_ext(spr_nombre_mapa3,0,x,y,1,1,0,c_white,1) break;
	}
}



