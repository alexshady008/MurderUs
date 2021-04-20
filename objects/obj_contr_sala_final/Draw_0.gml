/// @description Dibuja las palabras del popup
// Puede escribir su código en este editor


// Dibuja la pantalla negra
draw_set_color(c_black)
draw_set_alpha(0.65)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

// DIbuja el campo
draw_sprite_ext(spr_popup_grande,0,x,y,1,1,0,c_white,1)

#region Dibuja el titulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = y-200
	
	// Es el ganador de la partida
	if (global.jugadorGanador) {
		switch(os_get_language()) {
			case "es": draw_text_colour(x,posY,"GANASTE LA PARTIDA",color,color,color,color,1)   break;
			case "pt": draw_text_colour(x,posY,"VOCÊ GANHOU O JOGO",color,color,color,color,1)   break;
			case "it": draw_text_colour(x,posY,"HAI VINTO LA PARTITA",color,color,color,color,1)   break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_colour(x,posY,"ВЫ ВЫИГРАЛИ ИГРУ",color,color,color,color,1)   break;
			default: draw_text_colour(x,posY,"YOU WON THE GAME",color,color,color,color,1)    break;
		}
	}
	
	// No es el ganador de la partida
	else {
		switch(os_get_language()) {
			case "es": draw_text_colour(x,posY,"PERDISTE LA PARTIDA",color,color,color,color,1)   break;
			case "pt": draw_text_colour(x,posY,"PERDESTE O JOGO",color,color,color,color,1)   break;
			case "it": draw_text_colour(x,posY,"HAI PERSO LA PARTITA",color,color,color,color,1)   break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_colour(x,posY,"ВЫ ПРОИГРАЛИ ИГРУ",color,color,color,color,1)   break;
			default: draw_text_colour(x,posY,"YOU LOST THE GAME",color,color,color,color,1)    break;
		}
	}
#endregion


#region Dibuja el subtitulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = y
	
	if (global.jugadorGanador) {
		switch(os_get_language()) {
		case "es": draw_text_ext_transformed_color(x,posY,"¡FELICIDADES, HAS GANADO! SUPERASTE TODOS LOS OBSTACULOS Y FUISTE EL JUGADOR CON MEJOR DESTREZA. ¡INTENTALO NUEVAMENTE!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)   break;
		case "pt": draw_text_ext_transformed_color(x,posY,"PARABÉNS, VOCÊ GANHOU! VOCÊ SUPEROU TODOS OS OBSTÁCULOS E FOI O JOGADOR MAIS RÁPIDO. TENTE JOGAR NOVAMENTE!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		case "it": draw_text_ext_transformed_color(x,posY,"CONGRATULAZIONI, HAI VINTO! HAI SUPERATO TUTTI GLI OSTACOLI ED ERA IL GIOCATORE PIÙ ABILE. PROVA A GIOCARE DI NUOVO!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_ext_transformed_color(x,posY,"ПОЗДРАВЛЯЕМ, ВЫ ПОБЕДИЛИ! ПРЕОДОЛЕНИЕ ВСЕ ПРЕПЯТСТВИЙ И БЫЛ ВЫСОКОКАЧЕСТВЕННЫЙ ИГРОК. ПОПРОБУЙТЕ ИГРАТЬ СНОВА!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		default: draw_text_ext_transformed_color(x,posY,"CONGRATULATIONS YOU WIN! YOU OVERCOMED ALL OBSTACLES AND WERE THE FASTEST PLAYER. TRY TO PLAY AGAIN!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)     break;
		}
	}
	else {
		switch(os_get_language()) {
		case "es": draw_text_ext_transformed_color(x,posY,"¡LO SENTIMOS, HAS PERDIDO! NO TE PREOCUPES, NO SIEMPRE SE GANA, LO IMPORTANTE ES DIVERTIRSE. ¡INTENTALO NUEVAMENTE!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)   break;
		case "pt": draw_text_ext_transformed_color(x,posY,"DESCULPE, VOCÊ PERDEU! NÃO SE PREOCUPE O IMPORTANTE É SE DIVERTIR. TENTE JOGAR NOVAMENTE!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		case "it": draw_text_ext_transformed_color(x,posY,"SCUSA, HAI PERSO! NON PREOCCUPARTI, L'IMPORTANTE È DIVERTIRSI. PROVA A GIOCARE DI NUOVO!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_ext_transformed_color(x,posY,"ИЗВИНИТЕ, ТЫ ПРОИРАЛСЯ! ВАЖНОЕ УДОВОЛЬСТВИЕ. ПОПРОБУЙТЕ ИГРАТЬ СНОВА!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		default: draw_text_ext_transformed_color(x,posY,"SORRY, YOU LOST! DO NOT WORRY, YOU DO NOT ALWAYS WIN, THE IMPORTANT THING IS TO HAVE FUN. TRY TO PLAY AGAIN!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)     break;
		}
	}
#endregion