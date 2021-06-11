/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true and global.popup == true){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Acepta y Cierra el popup
	if (objAccionar !=noone and instance_exists(objAccionar)){
		objAccionar.alarm[11] = 1
	}
	
	if (popup !=noone and instance_exists(popup)){
		instance_destroy(popup)
	}
}
