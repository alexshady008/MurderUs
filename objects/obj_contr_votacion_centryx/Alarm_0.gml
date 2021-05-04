/// @description Contr los frames de la luz de la puerta
// Puede escribir su código en este editor

if (frame_lava<=max_lava_frame) {
	frame_lava++
	var tiempo = tiempo_lava_frame/global.step_delta
	if (tiempo>=1) alarm[0] = tiempo
	else alarm[0] = 1
	
	if (frame_lava==max_lava_frame) frame_lava = 0
} 
