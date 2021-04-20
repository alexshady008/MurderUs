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
	
	switch(os_get_language()) {
		case "es": draw_text_outline("UNIRSE A LA COMUNIDAD",x,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("JUNTE-SE À COMUNIDADE",x,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("UNISCITI ALLA COMUNITÀ",x,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("СООБЩЕСТВО",x,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("JOIN THE COMMUNITY",x,posY,c_black,1,1,c_white) break;
	}
#endregion


#region Dibuja el subtitulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	//var posY = y-70
	var posY = y+15
	switch(os_get_language()) {
		case "es": draw_text_ext_transformed_color(x,posY,"¿TE GUSTARÍA UNIRTE A NUESTRA COMUNIDAD DE DISCORD? ALLÍ PODRÁS VER LAS NOVEDADES DEL JUEGO, CONOCER, CHATEAR Y ORGANIZAR PARTIDAS CON OTROS JUGADORES. ADEMÁS, SI ERES UN CREADOR DE CONTENIDOS ¡TENEMOS UNA SORPRESA PARA TI!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)   break;
		case "pt": draw_text_ext_transformed_color(x,posY,"VOCÊ GOSTARIA DE PARTICIPAR DE NOSSA COMUNIDADE DISCORD? LÁ VOCÊ PODERÁ VER AS NOTÍCIAS DO JOGO, ENCONTRAR, CHATAR E ORGANIZAR JOGOS COM OUTROS JOGADORES. TAMBÉM, SE VOCÊ É UM CRIADOR DE CONTEÚDO, TEMOS UMA SURPRESA PARA VOCÊ!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		case "it": draw_text_ext_transformed_color(x,posY,"VUOI ENTRARE NELLA NOSTRA COMUNITÀ DISCORD? QUI POTRETE VEDERE LE NOTIZIE DEL GIOCO, INCONTRARVI, CHATARE E ORGANIZZARE GIOCHI CON ALTRI GIOCATORI. INOLTRE, SE SEI UN CREATORE DI CONTENUTI ABBIAMO UNA SORPRESA PER TE!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_ext_transformed_color(x,posY,"ХОТИТЕ ПРИСОЕДИНЯТЬСЯ К НАШЕМУ СООБЩЕСТВУ DISCORD? ТАМ ВЫ БУДЕТЕ УВИДЕТЬ НОВОСТИ ИГРЫ, ВСТРЕЧАЙТЕСЬ, ГОВОРИТЬ И ОРГАНИЗИРОВАТЬ ИГРЫ С ДРУГИМИ ИГРОКАМИ. ЕСЛИ ВЫ СОЗДАТЕЛЬ КОНТЕНТА, У НАС ДЛЯ ВАС ЕСТЬ СЮРПРИЗ!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
		default: draw_text_ext_transformed_color(x,posY,"WOULD YOU LIKE TO JOIN OUR DISCORD COMMUNITY? THERE YOU WILL BE ABLE TO SEE THE NEWS IN THE GAME, MEET, CHAT AND ORGANIZE GAMES WITH OTHER PLAYERS. PLUS, IF YOU ARE A CONTENT CREATOR, WE HAVE A SURPRISE FOR YOU!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)     break;
	}
#endregion

