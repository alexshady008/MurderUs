/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (escala_llama == 2) escala_llama = 2.3
else escala_llama = 2

var tiempo = alarma_tiempo/global.step_delta
if (tiempo>=1) alarm[0] = tiempo
else alarm[0] = 1