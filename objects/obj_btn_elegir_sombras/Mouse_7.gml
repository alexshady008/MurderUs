/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Se califica el juego
	global.luz = false
	ini_open("comandos.ini")
	ini_write_real("jugadorDatos","luz",global.luz)
	ini_close()
	
}
