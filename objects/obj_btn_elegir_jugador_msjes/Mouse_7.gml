/// @description Contr cuando se vota a un jugador
// Puede escribir su código en este editor

if (global.chat==2 and 
	(global.max_etapa_mjes==2 or global.max_etapa_mjes==3 or global.max_etapa_mjes==5)) {
	escalaX = escalaX_inicial
	escalaY = 1
	
	/// sonido
	if (global.musica) audio_play_sound(snd_boton,100,false) 
						
	if (global.etapa_msjs==2) global.A = nombre_jugador
	else if (global.etapa_msjs==3) global.B = nombre_jugador
	//else if (global.max_etapa_mjes==5) global.A = nombre_jugador
	
	// Contr el mensaje y las etapas
	if instance_exists(obj_mostrar_jugadores_msjes) obj_mostrar_jugadores_msjes.alarm[0] = 1
	
}	