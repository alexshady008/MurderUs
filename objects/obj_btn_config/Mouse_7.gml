/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	instance_create_depth(room_width/2,room_height/2,-10,obj_contr_config)
}
