/// @description Propiedades
// Puede escribir su código en este editor

escala = 1
contr_escala_y = true
contr_alarma_anim = 5

var tiempo = contr_alarma_anim/global.step_delta
if (tiempo>=1) alarm[0] = tiempo
else alarm[0] = 1