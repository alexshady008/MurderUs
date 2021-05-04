/// @description Cambia la etapa
// Puede escribir su código en este editor
etapa = 6
Yescala_arbusto = 1.2
Xescala_arbusto = 1.1

// Tiempo alarma
var tiempo = 10/global.step_delta
if (tiempo>=1) alarm[2] = tiempo
else alarm[2] = 1


//Contr el sonido del arbusto
if (global.musica) audio_play_sound(snd_arbusto,100,false)