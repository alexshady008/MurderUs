/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Comienza el juego
	global.tipo_mapa_a_jugar = global.tipo_mapa_sala
	global.editor = false
	//room_goto(rm_nivel1)
	
	switch(global.tipo_mapa_sala){
		case 1: room_goto(rm_nivel1) break
		case 2: room_goto(rm_nivel2) break
		case 3: room_goto(rm_nivel3) break
		default: 
			switch(global.mapa_elegido){
				case 1: room_goto(rm_nivel1_editor)  break
				case 2: room_goto(rm_nivel2_editor)  break
				case 3: room_goto(rm_nivel3_editor)  break
			}
		break
	}
	
}
