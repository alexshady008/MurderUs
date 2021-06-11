/// @description Propiedades
// Puede escribir su código en este editor
etapa = 1

// Contr la alarma y el tiempo del frame
frame_luz = 0
max_luz_frame = 4
tiempo_luz_frame = 5
tiempo_etapa = 25
var tiempo = tiempo_etapa/global.step_delta
if (tiempo>=1) alarm[0] = tiempo
else alarm[0] = 1

// Contr la posY del jugador
posY_jug = (global.cam_y+global.cam_alto) -50
max_posY_jug = global.cam_y-100
etapa1_posY_jug = global.cam_y+400
etapa2_posY_jug = global.cam_y+100
rotacion_jug = 0


//Contr el sonido de fondo
sonido_fondo = noone
if (global.musica) sonido_fondo = audio_play_sound(snd_fondo2,100,true)
