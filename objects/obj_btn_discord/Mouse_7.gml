/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Va al servidor de Discord
		url_open("https://discord.gg/gb4U3sV6Ga")
		
		if !(global.unirse_discord) {
			global.unirse_discord = true
			ini_open("comandos.ini")
				ini_write_real("jugadorDatos","unirse_discord",global.unirse_discord)
			ini_close()
		}
	#endregion
}
