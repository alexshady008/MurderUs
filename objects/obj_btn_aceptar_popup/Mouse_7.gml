/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true and global.popup == true){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Cierra el popup
	if (popup !=noone and instance_exists(popup)){
		instance_destroy(popup)
	}
}
