/// @description Dibuja su interfaz
// Puede escribir su código en este editor

draw_self();
draw_sprite(spr_indicador_regalo, 0, x, y);

// Textos para Debug
//draw_set_font(fnt_normal)
//draw_set_halign(fa_left);
//draw_text(25, room_height - 50, "Velocidad: " + string(velocidad));
//draw_text(25, room_height - 150, "Angulo: " + string(image_angle));
//draw_text(25, room_height - 250, "Fraccion: " + string(abs(image_angle div 45)));
//draw_text(25, room_height - 350, "Angulo final : " + string(angulo_final));
//draw_text(25, room_height - 450, "Regalo : " + regalo);

draw_set_font(fnt_muy_grande);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);

#region Dibuja el titulo
	switch(os_get_language()) {
		case "es": draw_text(room_width * 0.5, 64, "RECOMPENSA"); break;
		case "pt": draw_text(room_width * 0.5, 64, "RECOMPENSA"); break;
		case "it": draw_text(room_width * 0.5, 64, "RICOMPENSA"); break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text(room_width * 0.5, 64, "ВОЗНАГРАЖДЕНИЕ"); break;
		default: draw_text(room_width * 0.5, 64, "REWARD"); break;
	}
#endregion

switch (estado) {
    case "Parada":
        draw_set_color(c_yellow);
		draw_text(room_width * 0.25, room_height * 0.5, regalo);
		var texto_regalo = scr_texto_regalos_traducciones(texto_girar)
		draw_text(room_width * 0.25, room_height -64, texto_regalo);
		if(regalo != "?")
		{
			scr_dibujar_regalo(texto_girar, room_width * 0.25, room_height * 0.5, numero_regalo);
		}
		else {
			draw_sprite(spr_dedo_referencia, 0, posX_mano, posY_mano)
		}
        break;
    case "Acelerar":
		draw_set_color(c_yellow);
		var texto_regalo = scr_texto_regalos_traducciones(texto_girar)
		draw_text(room_width * 0.25, room_height -64, texto_regalo);
        if (velocidad >= 15) {
			draw_set_color(c_white);
			
			#region Dibuja la frase de detener la ruleta
				var posY = room_height * 0.5
				var n = 50
				switch(os_get_language()) {
					case "es": draw_text(room_width * 0.25, posY-n, "Toque para")
						draw_text(room_width * 0.25, posY+n, "detener la ruleta"); break;
					case "pt": draw_text(room_width * 0.25, posY-n, "Toque para")
						draw_text(room_width * 0.25, posY+n, "parar a roleta"); break;
					case "it": draw_text(room_width * 0.25, posY-n, "Tocca per")
						draw_text(room_width * 0.25, posY+n, "interrompere la roulette"); break;
					case "ru": draw_set_font(fnt_grande_ru) 
						draw_text(room_width * 0.25, posY-n, "Нажмите, чтобы")
						draw_text(room_width * 0.25, posY+n, "остановить рулетку"); break;
					default: draw_text(room_width * 0.25, posY-n, "Tap to stop")
						draw_text(room_width * 0.25, posY+n, "the roulette"); break;
				}
			#endregion
		}
        break;
}

