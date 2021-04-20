/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//depth = global.depth_piso

escala_llama = 1
alarma_tiempo = 10

var tiempo = alarma_tiempo/global.step_delta
if (tiempo>=1) alarm[0] = tiempo
else alarm[0] = 1