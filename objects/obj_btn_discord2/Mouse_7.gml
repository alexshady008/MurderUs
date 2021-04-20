/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true and global.popup == false){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	url_open("https://discord.gg/gb4U3sV6Ga")
	alarm[0]=15
	
}
