/// @description Propiedades
// Puede escribir su código en este editor
etapa = 1
if (global.estadoJuego == "votacion_finalizada_un_jugador_elegido")
{
	var tiempo = 25/global.step_delta
	if (tiempo>=1) alarm[1] = tiempo
	else alarm[1] = 1
}


// Contr la alarma y el tiempo del frame
frame_lava = 0
max_lava_frame = 5
tiempo_lava_frame = 5
var tiempo = tiempo_lava_frame/global.step_delta
if (tiempo>=1) alarm[0] = tiempo
else alarm[0] = 1


// Contr la posY del jugador
posY_jug = (global.cam_y) -100
max_posY_jug = (global.cam_y+global.cam_alto)-50
rotacion_jug = 0


// COntr la pos del diamante
posY_diamante = (global.cam_y+global.cam_alto)+130
max_posY_diamante = (global.cam_y+global.cam_alto)-120



//Contr el sonido de fondo
sonido_fondo = noone
if (global.musica) sonido_fondo = audio_play_sound(snd_cascada2,100,true)
