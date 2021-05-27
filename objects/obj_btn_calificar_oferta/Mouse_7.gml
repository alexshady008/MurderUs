/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true and global.popup == false){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Se califica el juego
	if !(global.regaloSkins){
		scr_calificar()
		alarm[0]=15
	}
	else {
		if !(global.ruleta_usada) {
			global.menuBloq=false
			room_goto(rm_regalos)
		}
		//room_goto(rm_regalos)
	}
	
}
