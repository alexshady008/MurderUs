/// @description Dibuja la interfaz
// Puede escribir su código en este editor

#region Propiedades de la camara
	if (room==rm_menu){
		var cam_x = 0
		var cam_y = 0
	} else {
		var cam_x = camera_get_view_x(view_camera[0]) 
		var cam_y = camera_get_view_y(view_camera[0]) 
	}	
#endregion


#region Dibuja la pantalla negra
	draw_set_color(c_black)
	draw_set_alpha(0.65)
	draw_rectangle(0,0,room_width,room_height,0)
	draw_set_alpha(1)
#endregion


draw_sprite_ext(spr_popup_grande,0,cam_x+640,cam_y+320,1,1,0,c_white,1)

//draw_rectangle_color(posX1_presionable,posY1_presionable,posX2_presionable,posY2_presionable,c_silver,c_silver,c_silver,c_silver,false)


#region Dibuja el titulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = cam_y+120
	var posX = cam_x+640

	switch(os_get_language()) {
		case "es": draw_text_outline("VESTIMENTA",posX,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("ROUPAS",posX,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("INDUMENTI",posX,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОДЕЖДА",posX,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("CLOTHING",posX,posY,c_black,1,1,c_white) break;
	}
#endregion	


#region Dibuja la cantidad de monedas
	draw_set_halign(fa_left)
	var posY = cam_y+50
	draw_sprite_ext(spr_moneda_icono,0,cam_x+50,posY,1,1,0,c_white,1)
	draw_text_outline(""+string(floor(global.monedas)),cam_x+100,posY,c_black,1,1,c_white)
#endregion


#region Dibuja al skin
	var escala = 2
	var pos_x = cam_x+352
	var pos_y = cam_y+336
	var skin = global.skinElegido
	var color = c_white
	
	if (instance_exists(obj_personaje)) {
		skin = obj_personaje.skin
		var tipo_color = obj_personaje.contrColor
		if (skin==1) color = scr_crear_color(tipo_color)
		else color = c_white
	}	
	
	//Dibuja el pers
	//if (global.elegir_tipo_vestimenta==0) scr_dibuja_jugador_parado_ext(skin,color,pos_x,pos_y,1,escala)
	//else scr_dibuja_jugador_parado_ext(skin,color,pos_x,pos_y,0.65,escala)
	// Dibuja la prenda
	if (global.prendaElegida!=0) scr_dibuja_prenda_jug_parado(global.prendaElegida,0,pos_x,pos_y,1,escala,escala)
	// Dibuja el accesorio
	if (global.accesorioElegido!=0) scr_dibuja_accesorio_jug(global.accesorioElegido,pos_x,pos_y,1,escala,escala)
	// Dibuja el sombrero
	if (global.sombreroElegido!=0) scr_dibuja_sombrero_jug(global.sombreroElegido,pos_x,pos_y,1,escala,escala)
	// Dibuja a la mascota
	if (global.mascotaElegida!=0) scr_dibuja_mascota_parada(global.mascotaElegida,pos_x,pos_y,1,escala,color)
#endregion


#region Dibuja los marcadores de pesta;as
	//Contr pos X
	switch (global.max_seccion_vestimenta){
		case 1: var posX = cam_x+750 break;
		case 2: var posX = cam_x+737 break;
		case 3: var posX = cam_x+715 break;
		case 4: var posX = cam_x+692 break;
		default: var posX = cam_x+670 break;
	}
	var nX = 45
	// COntr pos Y
	var posY = cam_y+525
	
	for (i=0 ; i<=global.max_seccion_vestimenta ; i++){
		//Lo dibuja
		if (i==global.seccion_vestimenta) draw_sprite(spr_pestania_marcador,0,posX,posY)
		else draw_sprite(spr_pestania_marcador,1,posX,posY)
		posX += nX
	}
#endregion

