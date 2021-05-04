switch (estado) {
    case "Parada":
        velocidad = 0;
		if (regalo != "?")
		{
			if(escala <= 2) escala += 0.05;
			else escala = 2;
		}
        break;
	case "Acelerar":
        velocidad = clamp(velocidad + aceleracion, 0, velocidad_maxima);
        break;
	case "Frenar":
        velocidad = clamp(velocidad - aceleracion, 5, velocidad_maxima);
		if (velocidad <= 5 && image_angle == angulo_final) 
		{
			velocidad = 0;
			estado = "Parada";
			audio_play_sound(snd_premio, 1, false);
			alarm[0] = room_speed * 5;
		} 
        break;	
}

image_angle += velocidad;
if (image_angle > 359 or image_angle < -359) image_angle = 0;