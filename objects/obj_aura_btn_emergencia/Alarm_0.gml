/// @description Contr su escala
// Puede escribir su código en este editor

if (escala==1) escala=1.15
else escala=1

var tiempo = contr_alarma_anim/global.step_delta
if (tiempo>=1) alarm[0] = tiempo
else alarm[0] = 1