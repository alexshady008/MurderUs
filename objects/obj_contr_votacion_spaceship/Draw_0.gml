/// @description Dibuja la interfaz
// Puede escribir su código en este editor

#region Propiedades de la camara
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	var cam_ancho = camera_get_view_width(view_camera[0])
	var cam_alto = camera_get_view_height(view_camera[0])
#endregion


#region Dibuja el fondo
	draw_sprite(spr_fondo_votacion_spaceship, 0, cam_x, cam_y)
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


#region Dibuja el titulo
	if (global.estadoJuego == "votacion_finalizada_un_jugador_elegido"){
		var nombre_jugador_elegido = noone
		if (instance_exists(obj_contr_juego_online)) nombre_jugador_elegido = obj_contr_juego_online.nombre_jugador_elegido

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
	}	
	else if (global.estadoJuego == "votacion_finalizada_ningun_jugador_elegido") {
		switch(os_get_language()) {
			case "es": draw_text_outline("¡NADIE FUE ELEGIDO COMO ASESINO!",posX,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("NINGUÉM FOI ESCOLHIDO COMO ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("NESSUNO È STATO SCELTO COME ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("НИКТО НЕ ВЫБРАН!",posX,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("NOBODY WAS CHOSEN AS A KILLER!",posX,posY,c_black,1,1,c_white) break;
		}
	}
#endregion


if (global.estadoJuego == "votacion_finalizada_un_jugador_elegido")
{
	
	#region Dibuja la luz
		var posX_luz = cam_x+640
		var posY_luz = cam_y+838
		draw_sprite_ext(spr_puerta_luz_votacion_spaceship, frame_luz, posX_luz, posY_luz, 1, 1, 0, c_white, 1)
	#endregion
	
	#region  Dibuja al personaje
		var posX_jug = cam_x+640
		var id_jugador_elegido = noone
		if (instance_exists(obj_contr_juego_online)) id_jugador_elegido = obj_contr_juego_online.id_jugador_elegido
		
		if (id_jugador_elegido!=noone) {
			scr_contr_dibujo_personaje_votado(id_jugador_elegido, posX_jug, posY_jug, escala, 1, rotacion_jug, false)
		}	
	#endregion
	
	#region Dibuja el fondo 2
		draw_sprite(spr_fondo2_votacion_spaceship, 0, cam_x, cam_y)
	#endregion
	
	#region Dibuja las palabras
		if (etapa>=4) scr_dibuja_titulo_rol_votacion(posX, posY2)
	#endregion
	
	#region Dibuja la cant de asesinos
		if (etapa>=5) scr_dibuja_cant_asesinos_votacion(posX, posY3)
	#endregion

}
else {

	#region Dibuja el fondo 2
		draw_sprite(spr_fondo2_votacion_spaceship, 0, cam_x, cam_y)
	#endregion

}


//draw_text(cam_x+640, cam_y+360, "Etapa: "+string(etapa))