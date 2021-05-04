/// @description Contr la pos Y del jugador
// Puede escribir su código en este editor


//Contr la pos y rotacion del jugador
if (etapa==2){
	// COntr la posY
	if (posY_jug<max_posY_jug){
		posY_jug += 20*global.step_delta
	}
	else {
		etapa = 3
		// Tiempo alarma
		var tiempo = 30/global.step_delta
		if (tiempo>=1) alarm[2] = tiempo
		else alarm[2] = 1
		//Contr el sonido de sumergirse
		if (global.musica) audio_play_sound(snd_sumergirse_agua,100,false)
	}
	
	//Contr la rotacion
	if (rotacion_jug<360) rotacion_jug += 1*global.step_delta
	else rotacion_jug=0
}


// Contr la pos del diamante
if (etapa==5){
	// COntr la posY
	if (posY_diamante>max_posY_diamante){
		posY_diamante -= 10*global.step_delta  //6
	}
	else {
		etapa = 6
		//Contr el sonido de gota de agua
		if (global.musica) audio_play_sound(snd_gota_agua,100,false)
	}
}


// Se destruye
if !(global.estadoJuego == "votacion_finalizada_un_jugador_elegido")
 and !(global.estadoJuego == "votacion_finalizada_ningun_jugador_elegido") instance_destroy()