/// @description Contr cuando se vota a un jugador
// Puede escribir su código en este editor

if (global.chat==2 and (global.max_etapa_mjes==4 or global.max_etapa_mjes==5)) {
	escalaX = escalaX_inicial
	escalaY = 1
	
	/// sonido
	if (global.musica) audio_play_sound(snd_boton,100,false) 
						
	global.X = nombre_lugar
	
	// Contr el mensaje y las etapas
	if instance_exists(obj_mostrar_lugares_msjes) obj_mostrar_lugares_msjes.alarm[0] = 1
	
}	