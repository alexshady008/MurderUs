/// @description Cambia a la etapa 4
// Puede escribir su código en este editor
etapa = 4

// Tiempo alarma
var tiempo = 50/global.step_delta
if (tiempo>=1) alarm[3] = tiempo
else alarm[3] = 1

//Contr el sonido de roca
if (global.musica) audio_play_sound(snd_roca,100,false)