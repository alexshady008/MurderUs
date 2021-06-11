/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	#region sonido
		if (global.musica == false)
		{ 
			audio_play_sound(snd_boton,100,false) 
			audio_play_sound(snd_fondo1,100,true) 
			global.musica = true
			ini_open("comandos.ini")
			ini_write_real("jugadorDatos","sonido",global.musica)
			ini_close()
		}
		else {
			audio_stop_all()
			global.musica = false
			ini_open("comandos.ini")
			ini_write_real("jugadorDatos","sonido",global.musica)
			ini_close()
		}
	#endregion
}
