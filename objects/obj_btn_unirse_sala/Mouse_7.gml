/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	if (global.modo_jugabilidad==1) {
		if !(global.tutorial_historia_juego) {
			global.room_historia_finalizada = rm_unirse_sala
			room_goto(rm_historia)
		}	
		else {
			room_goto(rm_unirse_sala)
		}	
	}
}
