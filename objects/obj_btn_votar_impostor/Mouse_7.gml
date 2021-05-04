/// @description Contr cuando se vota a un jugador
// Puede escribir su código en este editor

if (global.muerto==false and global.contr_votacion==true and global.chat==false and global.votar_impostor==noone) {
	escalaX = escalaX_inicial
	escalaY = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
						
	global.votar_impostor = id_jugador
	global.contr_votacion =  -1
	scr_votar_impostor(global.votar_impostor,global.idLocal)
}	