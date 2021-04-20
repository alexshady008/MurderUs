/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)



 // Letras
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal_ru)

if (nombre_sala != noone) draw_text_outline2(nombre_sala,x,y-20,borde,1,1,color)

draw_set_halign(fa_left)
if (jugadores_sala!=noone and max_jugadores_sala!=noone) {
	if (mapa_sala!=noone) var posX = x+50
	else var posX = x
	draw_text_outline2(""+string(jugadores_sala)+" / "+string(max_jugadores_sala),posX,y+20,borde,1,1,color)
}	

draw_set_halign(fa_right)
if (mapa_sala!=noone) {
	var posX = x
	switch(mapa_sala){
		case 1: draw_text_outline2("Spaceship",posX,y+20,borde,1,1,color) break
		case 2: draw_text_outline2("Lyra",posX,y+20,borde,1,1,color) break
		case 3: draw_text_outline2("Centryx",posX,y+20,borde,1,1,color) break
		default: draw_text_outline2("Personalized",posX,y+20,borde,1,1,color) break
	}
	
}	
	

/*
switch(os_get_language()) {
case "es": draw_text_outline("UNIRSE A SALA",x,y,borde,1,1,color) break;
case "pt": draw_text_outline("JUNTE-SE JOGO",x,y,borde,1,1,color) break;
case "it": draw_text_outline("ADERIRE GIOCO",x,y,borde,1,1,color) break;
case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ЗАЛЕЗАЙ ИГРУ",x,y,borde,1,1,color) break;
default: draw_text_outline("JOIN GAME",x,y,borde,1,1,color) break;
}