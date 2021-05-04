/// @description Contr los frames de la luz de la puerta
// Puede escribir su código en este editor

if (frame_luz<max_luz_frame) {
	//Contr el sonido de la puerta
	if (frame_luz==0){
		if (global.musica) audio_play_sound(snd_puerta_corrediza,100,false)
	}
	// COntr el frame
	frame_luz++
	// Tiempo alarma
	var tiempo = tiempo_luz_frame/global.step_delta
	if (tiempo>=1) alarm[0] = tiempo
	else alarm[0] = 1
}
else {
	frame_luz = max_luz_frame-1
	etapa = 2
	var tiempo = tiempo_etapa/global.step_delta
	if (tiempo>=1) alarm[1] = tiempo
	else alarm[1] = 1
}