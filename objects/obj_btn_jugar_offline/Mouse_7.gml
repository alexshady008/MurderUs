/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Comienza el juego
	/*
	switch(global.tipo_mapa_sala){
		case 1: room_goto(rm_nivel1_offline) break
		case 2: room_goto(rm_nivel2_offline) break
		case 3: room_goto(rm_nivel3_offline) break
		default: 
			switch(global.mapa_elegido){
				case 1: room_goto(rm_nivel1_offline)  break
				case 2: room_goto(rm_nivel2_offline)  break
				case 3: room_goto(rm_nivel3_offline)  break
			}
		break
	}
	*/
}
