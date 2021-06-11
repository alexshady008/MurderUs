/// @description Contr las posiciones de los objetos
// Puede escribir su código en este editor

//Contr las enredaderas 1 
if (etapa==2){
	if (posY_enredaderas_1>max_posY_enredadera) { posY_enredaderas_1 -= 5*global.step_delta }
	else {
		etapa = 3
		//Contr el sonido del arbusto
		if (global.musica) audio_play_sound(snd_arbusto,100,false)
	}	
}

//Contr las enredaderas 2 
if (etapa==3){
	if (posY_enredaderas_2>max_posY_enredadera) { posY_enredaderas_2 -= 5*global.step_delta }
	else {
		etapa = 4
		//Contr el sonido del arbusto
		if (global.musica) audio_play_sound(snd_arbusto,100,false)
	}	
}


//Contr la rotacion de la planta
if (etapa==4){
	if (angulo_planta_carnivora[0]>0 and angulo_planta_carnivora[1]<0) {
		if (angulo_planta_carnivora[0]>0) angulo_planta_carnivora[0] -= 8*global.step_delta
		if (angulo_planta_carnivora[1]<0) angulo_planta_carnivora[1] += 8*global.step_delta
	}	
	else {
		etapa = 5
		angulo_planta_carnivora[0]=0
		angulo_planta_carnivora[1]=0
		var tiempo = (tiempo_pasar_etapa/2)/global.step_delta
		if (tiempo>=1) alarm[1] = tiempo
		else alarm[1] = 1
		
		//Contr el sonido del asesinato
		if (global.musica) audio_play_sound(snd_asesinar,100,false)
	}	
}





if !(global.estadoJuego == "votacion_finalizada_un_jugador_elegido")
 and !(global.estadoJuego == "votacion_finalizada_ningun_jugador_elegido") instance_destroy()