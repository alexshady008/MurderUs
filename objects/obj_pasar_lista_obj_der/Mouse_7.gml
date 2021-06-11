/// @description Se activa el modo para borrar objetos
if ( global.jugabilidad=true and global.visible_opciones == true){
	image_alpha = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	
	if (global.lista_obj < global.max_listas_obj) global.lista_obj += 1 
	else global.lista_obj = 1 

}
