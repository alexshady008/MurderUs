/// @description Propiedades
// Puede escribir su código en este editor

//Etapa
etapa = 1
tiempo_pasar_etapa = 80
if (global.estadoJuego == "votacion_finalizada_un_jugador_elegido")
{
	var tiempo = tiempo_pasar_etapa/global.step_delta
	if (tiempo>=1) alarm[0] = tiempo
	else alarm[0] = 1
}


// Posiciones de las enredaderas
cant_enredaderas = 2
// Pos X
posX_enredaderas_1[0] = global.cam_x + 200
posX_enredaderas_1[1] = (global.cam_x+global.cam_ancho) - 200
posX_enredaderas_2[0] = global.cam_x + 350
posX_enredaderas_2[1] = (global.cam_x+global.cam_ancho) - 350
//Pos Y
posY_enredaderas_1 = (global.cam_y+global.cam_alto) 
posY_enredaderas_2 = (global.cam_y+global.cam_alto) 
max_posY_enredadera = (global.cam_y+global.cam_alto) - 200


// Rotacion de la planta carnivora
angulo_planta_carnivora[0] = 180
angulo_planta_carnivora[1] = -180
Yescala_arbusto = 1
Xescala_arbusto = 1


//Contr el sonido de fondo
sonido_fondo = noone
if (global.musica) sonido_fondo = audio_play_sound(snd_electricidad,100,true)