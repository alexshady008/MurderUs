/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true and global.popup == false){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Se califica el juego
	scr_calificar()
	//url_open("https://play.google.com/store/apps/details?id=com.cheshirex.murderus")
	alarm[0]=15
	
}
