/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	if (global.modo_jugabilidad==2) {
		global.modo_jugabilidad_offline = 2
		
		// Accede a la room  
		if !(global.tutorial_historia_juego) {
			global.room_historia_finalizada = rm_config_supervivencia
			room_goto(rm_historia)
		}	
		else {
			room_goto(rm_config_supervivencia)
		}
	}	
}
