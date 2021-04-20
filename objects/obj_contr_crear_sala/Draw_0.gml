/// @description Dibuja las palabras de la interfaz
// Puede escribir su código en este editor


// Dibuja la pantalla negra
draw_set_color(c_black)
draw_set_alpha(0.65)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

// DIbuja el campo
//draw_sprite_ext(spr_popup_grande,0,x,y,1,1,0,c_white,1)


#region Dibuja el titulo del nombre de la sala
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 350
	var posY = 48
	switch(os_get_language()) {
		case "es": draw_text_outline("NOMBRE DE LA SALA",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("NOME DO JOGO",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("NOME DEL GIOCO",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("НАЗВАНИЕ ИГРЫ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("NAME OF THE GAME",posX,posY,borde,1,1,color) break;
	}	
#endregion	


#region Dibuja el titulo del tipo de la sala
	/*draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 990
	var posY = 48
	switch(os_get_language()) {
		case "es": draw_text_outline("TIPO DE SALA",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("TIPO DE JOGO",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("TIPO DI GIOCO",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ТИП ИГРЫ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("GAME TYPE",posX,posY,borde,1,1,color) break;
	}	*/
#endregion	


#region Dibuja el titulo de la cant de impostores en la sala
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 272  //350
	var posY = 200
	switch(os_get_language()) {
		case "es": draw_text_outline("ASESINOS",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("ASSASSINOS",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("ASSASSINI",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("УБИЙЦЫ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("KILLERS",posX,posY,borde,1,1,color) break;
	}	
#endregion	


#region Dibuja el titulo de la cant de impostores en la sala
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 640  //350
	var posY = 200
	switch(os_get_language()) {
		case "es": draw_text_outline("DETECTIVES",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("DETETIVES",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("DETECTIVE",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ДЕТЕКТИВЫ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("DETECTIVES",posX,posY,borde,1,1,color) break;
	}	
#endregion	


#region Dibuja el titulo de la cant de complices en la sala
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 1008  //350
	var posY = 200
	switch(os_get_language()) {
		case "es": draw_text_outline("CÓMPLICES",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("COMPLICES",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("COMPLICI",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("сообщник",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("ACCOMPLICES",posX,posY,borde,1,1,color) break;
	}	
#endregion	


#region Dibuja el titulo de la cant de jugadores en la sala
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 272  //990
	var posY = 352
	switch(os_get_language()) {
		case "es": draw_text_outline("JUGADORES",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("JOGADORES",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("GIOCATORI",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ИГРОКИ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("PLAYERS",posX,posY,borde,1,1,color) break;
	}	
#endregion	


#region Dibuja el titulo del tiempo de la discusion
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 640  //990
	var posY = 352
	switch(os_get_language()) {
		case "es": draw_text_outline("SEGUNDOS VOTACIÓN",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("VOTANDO SEGUNDOS",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("SECONDA VOTAZIONE",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ВРЕМЯ ГОЛОСОВАНИЯ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("VOTING SECONDS",posX,posY,borde,1,1,color) break;
	}	
#endregion


#region Dibuja el titulo de la cant de tareas en la sala
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 1008  //990
	var posY = 352
	switch(os_get_language()) {
		case "es": draw_text_outline("TAREAS",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("TAREFAS",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("COMPITI",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ЗАДАЧА",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("TASKS",posX,posY,borde,1,1,color) break;
	}	
#endregion	


#region Dibuja el titulo del tipo de mapa de la sala
/*	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = 640
	var posY = 450  //475
	switch(os_get_language()) {
		case "es": draw_text_outline("TIPO DE MAPA",posX,posY,borde,1,1,color) break;
		case "pt": draw_text_outline("TIPO DE MAPA",posX,posY,borde,1,1,color) break;
		case "it": draw_text_outline("TIPO DI MAPPA",posX,posY,borde,1,1,color) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ТИП КАРТЫ",posX,posY,borde,1,1,color) break;
		default: draw_text_outline("TYPE OF MAP",posX,posY,borde,1,1,color) break;
	}	*/
#endregion	