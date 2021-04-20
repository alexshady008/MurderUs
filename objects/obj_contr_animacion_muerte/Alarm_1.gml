/// @description Contr los frame de la animacion
// Puede escribir su código en este editor


if (frame==max_frame) {
	//frame=3
	//alarm[0] = tiempo_frame
	if (global.step_delta>=1) alarm[0] = tiempo_frame/global.step_delta  
	else alarm[0] = tiempo_frame
	//sonido
	if (global.musica) audio_play_sound(snd_asesinar,100,false)
	
	asesinato_parte = 2
	//frame = 0
}	
else if (frame<max_frame) {
	frame+=1 
	// Contr el tiempo a cambiar de frame
	if (max_frame<5) var tiempo = (tiempo_frame/2)/global.step_delta  
	else var tiempo = (tiempo_frame/3)/global.step_delta 
	// Activa la alarma que cambia de frame
	if (tiempo>=1) alarm[1] = tiempo
	else alarm[1] = 1
}
