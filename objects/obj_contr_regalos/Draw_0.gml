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

draw_text(room_width * 0.5, 64, "REWARD");

switch (estado) {
    case "Parada":
        draw_set_color(c_yellow);
		draw_text(room_width * 0.25, room_height * 0.5, regalo);
		draw_text(room_width * 0.25, room_height -64, texto_girar);
		if(regalo != "?")
		{
			scr_dibujar_regalo(texto_girar, room_width * 0.25, room_height * 0.5, numero_regalo);
		}
        break;
    case "Acelerar":
		draw_set_color(c_yellow);
		draw_text(room_width * 0.25, room_height -64, texto_girar);
        if (velocidad >= 15) {
			draw_set_color(c_white);
			draw_text(room_width * 0.25, room_height * 0.5, "Stop the roulette");
		}
        break;
}
