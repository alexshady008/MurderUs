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
	
	if !(global.regaloSkins)
	{
		switch(os_get_language()) {
			case "es": draw_text_outline("MASCOTAS GRATIS",x,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("SEUS PRESENTES",x,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("I TUOI REGALI",x,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ВЫИГРАТЬ СКИНЫ",x,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("FREE PETS",x,posY,c_black,1,1,c_white) break;
		}
	}
	else {
		switch(os_get_language()) {
			case "es": draw_text_outline("TU REGALO",x,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("SEUS PRESENTES",x,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("I TUOI REGALI",x,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ВАШИ ПОДАРКИ",x,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("YOUR GIFTS",x,posY,c_black,1,1,c_white) break;
		}
	}
#endregion

if !(global.regaloSkins)
{
	
	#region Dibuja el subtitulo del pop up
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = y-70
		switch(os_get_language()) {
			case "es": draw_text_ext_transformed_color(x,posY,"¡CALIFICA ESTE JUEGO Y DESBLOQUEA GRATIS "+string(floor(global.max_mascotas/2))+" MASCOTAS!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)   break;
			case "pt": draw_text_ext_transformed_color(x,posY,"AVALIE ESTE JOGO E DESBLOQUEIE "+string(floor(global.max_mascotas/2))+" ANIMAIS DE ESTIMAÇÃO DE GRAÇA!!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
			case "it": draw_text_ext_transformed_color(x,posY,"QUALIFICA QUESTO GIOCO E SBLOCCA "+string(floor(global.max_mascotas/2))+" ANIMALI!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_ext_transformed_color(x,posY,"Оцените эту игру и откройте "+string(floor(global.max_mascotas/2))+" домашних животных БЕСПЛАТНО!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
			default: draw_text_ext_transformed_color(x,posY,"RATE THIS GAME AND UNLOCK "+string(floor(global.max_mascotas/2))+" PETS FOR FREE!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)     break;
		}
	#endregion

	#region Mascotas a mostrarse  

		var posY = y+100
		draw_sprite_ext(spr_mascota01,0,384,posY,2,2,0,c_white,1)
		draw_sprite_ext(spr_mascota02,0,544,posY,2,2,0,c_white,1)
		draw_sprite_ext(spr_mascota03,0,736,posY,2,2,0,c_white,1)
		draw_sprite_ext(spr_mascota04_parada,0,896,posY,2,2,0,c_white,1)
		
		/*var posX = x-340
		var n = 170
	
		for(i=4 ; i<9 ; i++){
			var index = i
			draw_sprite_ext(spr_skins_muestras,index,posX,posY,1.2,1.2,0,c_white,1)
			posX += n
		}*/
	
	#endregion

}

else 
{

	#region Dibuja el subtitulo del pop up
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = y-70
		switch(os_get_language()) {
			case "es": draw_text_ext_transformed_color(x,posY,"¡GRACIAS POR CALIFICAR, DESBLOQUEASTE "+string(floor(global.max_mascotas/2))+" MASCOTAS!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)   break;
			case "pt": draw_text_ext_transformed_color(x,posY,"OBRIGADO POR SE QUALIFICAR, VOCÊ DESBLOQUEOU "+string(floor(global.max_mascotas/2))+" ANIMAIS DE ESTIMAÇÃO!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
			case "it": draw_text_ext_transformed_color(x,posY,"GRAZIE PER LA QUALIFICARE, HAI SBLOCCATO "+string(floor(global.max_mascotas/2))+" ANIMALI!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_ext_transformed_color(x,posY,"СПАСИБО ЗА ТАРИФ, ВЫ РАЗБЛОКИРОВАЛИ ВСЕХ ЖИВОТНЫХ!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)    break;
			default: draw_text_ext_transformed_color(x,posY,"THANK YOU FOR QUALIFYING, YOU UNLOCKED "+string(floor(global.max_mascotas/2))+" PETS!",60,800,0.8,0.8,0,color2,color2,color2,color2,1)     break;
		}
	#endregion

}