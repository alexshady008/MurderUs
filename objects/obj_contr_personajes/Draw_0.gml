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
		case "es": draw_text_outline("SELECCIONAR SKIN",x,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("SELECIONE A PELE",x,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("SELEZIONA LA PELLE",x,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ВЫБЕРИТЕ КОЖУ",x,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("SELECT SKIN",x,posY,c_black,1,1,c_white) break;
	}
#endregion


#region skin a mostrarse  

	var posY = y-70
	
   #region Despues del skin seleccionado
   
    if (global.skinsElegido)+1 <= (global.maxSkins)
	draw_sprite_ext(spr_skins_muestras,(global.skinsElegido),760,posY,1,1,0,c_white,1)
	else 
	draw_sprite_ext(spr_skins_muestras,(global.skinsElegido-global.maxSkins),760,posY,1,1,0,c_white,1)
	
	if (global.skinsElegido)+2 <= (global.maxSkins)
	draw_sprite_ext(spr_skins_muestras,(global.skinsElegido)+1,850,posY,1,1,0,c_white,1)
	else 
	draw_sprite_ext(spr_skins_muestras,(1)+(global.skinsElegido-global.maxSkins),850,posY,1,1,0,c_white,1)
	
	if (global.skinsElegido)+3 <= (global.maxSkins)
	draw_sprite_ext(spr_skins_muestras,(global.skinsElegido)+2,940,posY,1,1,0,c_white,1)
	else 
	draw_sprite_ext(spr_skins_muestras,(2)+(global.skinsElegido-global.maxSkins),940,posY,1,1,0,c_white,1)
	
	/*if (global.contr_skin)+4 <= (global.maxSkins)
	draw_sprite_ext(spr_regalo_skin_individual,(global.contr_skin)+4,1030,posY,1,1,0,c_white,1)
	else 
	draw_sprite_ext(spr_regalo_skin_individual,(3)+(global.contr_skin-global.maxSkins),1030,posY,1,1,0,c_white,1)
	
	if (global.contr_skin)+5 <= (global.maxSkins)
	draw_sprite_ext(spr_regalo_skin_individual,(global.contr_skin)+5,1120,posY,1,1,0,c_white,1)
	else 
	draw_sprite_ext(spr_regalo_skin_individual,(4)+(global.contr_skin-global.maxSkins),1120,posY,1,1,0,c_white,1)
	
	if (global.contr_skin)+6 <= (global.maxSkins)
	draw_sprite_ext(spr_regalo_skin_individual,(global.contr_skin)+6,1210,posY,1,1,0,c_white,1)
	else 
	draw_sprite_ext(spr_regalo_skin_individual,(5)+(global.contr_skin-global.maxSkins),1210,posY,1,1,0,c_white,1)*/
	#endregion
	
	
	#region Antes del skin seleccionado
	
	if (global.skinsElegido)-1 >= 1
	draw_sprite_ext(spr_skins_muestras,(global.skinsElegido)-2,520,posY,1,1,0,c_white,1)
	else
	draw_sprite_ext(spr_skins_muestras,(global.maxSkins-2)+(global.skinsElegido),520,posY,1,1,0,c_white,1)
	
	if (global.skinsElegido)-2 >= 1
	draw_sprite_ext(spr_skins_muestras,(global.skinsElegido)-3,430,posY,1,1,0,c_white,1)
	else
	draw_sprite_ext(spr_skins_muestras,(global.maxSkins-3)+(global.skinsElegido),430,posY,1,1,0,c_white,1)
	
	if (global.skinsElegido)-3 >= 1
	draw_sprite_ext(spr_skins_muestras,(global.skinsElegido)-4,340,posY,1,1,0,c_white,1)
	else
	draw_sprite_ext(spr_skins_muestras,(global.maxSkins-4)+(global.skinsElegido),340,posY,1,1,0,c_white,1)
	/*
	if (global.skinsElegido)-4 >= 0
	draw_sprite_ext(spr_skins_muestras,(global.skinsElegido)-4,250,posY,1,1,0,c_white,1)
	else
	draw_sprite_ext(spr_skins_muestras,(global.maxSkins-3)+(global.skinsElegido),250,posY,1,1,0,c_white,1)
	
	if (global.contr_skin)-5 >= 0
	draw_sprite_ext(spr_regalo_skin_individual,(global.contr_skin)-5,160,posY,1,1,0,c_white,1)
	else
	draw_sprite_ext(spr_regalo_skin_individual,(global.maxSkins-4)+(global.contr_skin),160,posY,1,1,0,c_white,1)
	
	if (global.contr_skin)-6 >= 0
	draw_sprite_ext(spr_regalo_skin_individual,(global.contr_skin)-6,70,posY,1,1,0,c_white,1)
	else
	draw_sprite_ext(spr_regalo_skin_individual,(global.maxSkins-5)+(global.contr_skin),70,posY,1,1,0,c_white,1)
	*/
	#endregion
	
#endregion