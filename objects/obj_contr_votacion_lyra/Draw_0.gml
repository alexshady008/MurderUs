/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Propiedades de la camara
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	var cam_ancho = camera_get_view_width(view_camera[0])
	var cam_alto = camera_get_view_height(view_camera[0])
#endregion


#region  Propiedades
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_muy_grande)
	var posX = cam_x+640
	var posY = cam_y+160
	var posY2 = cam_y+460
	var posY3 = posY2+75
	var escala = 1.5
#endregion


#region Dibuja el fondo interior
	if (etapa==1) var index = 0
	else var index = 1
	draw_sprite(spr_fondo_interior_votacion_lyra, index, cam_x+50, cam_y+185)
#endregion


#region Dibuja la enredaderas
	for(i=0 ; i<cant_enredaderas ; i++) draw_sprite(spr_enredadera_votacion_lyra, 0, posX_enredaderas_1[i], posY_enredaderas_1)
	for(i=0 ; i<cant_enredaderas ; i++) draw_sprite(spr_enredadera_votacion_lyra, 0, posX_enredaderas_2[i], posY_enredaderas_2)
#endregion


#region  Dibuja al personaje
	var posX_jug = cam_x+640
	var posY_jug = cam_y+475
	var id_jugador_elegido = noone
	if (instance_exists(obj_contr_juego_online)) id_jugador_elegido = obj_contr_juego_online.id_jugador_elegido
		
	if (id_jugador_elegido!=noone) {
		if (etapa==1) var contr_color = false
		else var contr_color = true
		scr_contr_dibujo_personaje_votado(id_jugador_elegido, posX_jug, posY_jug, escala, 1, 0, contr_color)
	}	
#endregion


#region DIbuja a la planta carnivora
	var posX_planta = cam_x+640
	var posY_planta = cam_y+540
	draw_sprite_ext(spr_planta_carnivora_votacion_lyra, 0, posX_planta-50, posY_planta, Xescala_arbusto, Yescala_arbusto, angulo_planta_carnivora[0], c_white, 1)
	draw_sprite_ext(spr_planta_carnivora2_votacion_lyra, 0, posX_planta+50, posY_planta, Xescala_arbusto, Yescala_arbusto, angulo_planta_carnivora[1], c_white, 1)
#endregion


#region Dibuja el fondo exterior
	draw_sprite(spr_fondo_exterior_votacion_lyra, 0, cam_x, cam_y)
#endregion


#region Dibuja las palabras
	if (global.estadoJuego == "votacion_finalizada_un_jugador_elegido"){
		var nombre_jugador_elegido = noone
		if (instance_exists(obj_contr_juego_online)) nombre_jugador_elegido = obj_contr_juego_online.nombre_jugador_elegido
		
		#region Dibuja el titulo
		if (nombre_jugador_elegido!=noone){
			switch(os_get_language()) {
				case "es": draw_text_outline("¡"+string(nombre_jugador_elegido)+" FUE ELEGIDO COMO ASESINO!",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline(""+string(nombre_jugador_elegido)+" FOI ESCOLHIDO UM ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline(""+string(nombre_jugador_elegido)+" È STATO SCELTO COME ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline(""+string(nombre_jugador_elegido)+" БЫЛ ИЗБРАН УБИЙЦЕЙ",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline(""+string(nombre_jugador_elegido)+" HAS BEEN CHOSEN A KILLER!",posX,posY,c_black,1,1,c_white) break;
			}
		}
		else {
			switch(os_get_language()) {
				case "es": draw_text_outline("¡ALGUIEN FUE ELEGIDO COMO ASESINO!",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("ALGUÉM FOI ESCOLHIDO COMO ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("QUALCUNO È STATO SCELTO COME KILLER!",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("КТО-ТО БЫЛ ВЫБРАН УБИЙЦЕЙ!",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("SOMEONE WAS CHOSEN AS A KILLER!",posX,posY,c_black,1,1,c_white) break;
			}
		}
		#endregion
		
		#region Dibuja las palabras
			if (etapa>=5) scr_dibuja_titulo_rol_votacion(posX, posY2)
		#endregion
	
		#region Dibuja la cant de asesinos
			if (etapa>=6) scr_dibuja_cant_asesinos_votacion(posX, posY3)
		#endregion
	}	
	else if (global.estadoJuego == "votacion_finalizada_ningun_jugador_elegido") {
		#region Dibuja el titulo
			switch(os_get_language()) {
				case "es": draw_text_outline("¡NADIE FUE ELEGIDO COMO ASESINO!",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("NINGUÉM FOI ESCOLHIDO COMO ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("NESSUNO È STATO SCELTO COME ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("НИКТО НЕ ВЫБРАН!",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("NOBODY WAS CHOSEN AS A KILLER!",posX,posY,c_black,1,1,c_white) break;
			}
			#endregion
	}
#endregion