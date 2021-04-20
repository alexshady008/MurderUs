/// @description Contr el frame del fondo
// Puede escribir su código en este editor

if (fondo_frame<max_fondo_frame) fondo_frame++
else fondo_frame=0 

//Activa la alarma
var tiempo = tiempo_cambiar_frame_fondo/global.step_delta
if (tiempo>=1) alarm[2] = tiempo
else alarm[2] = 1