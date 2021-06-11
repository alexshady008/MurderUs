/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido del boton
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	room_goto(rm_menu2)
	//room_goto(rm_mapa_juego_ejemplo)
}
