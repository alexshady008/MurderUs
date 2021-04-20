/// @description Va a la url del juego promocionado
if ( global.menuBloq == true and global.promocionar_juego != false){
	escala=1
	
	/// sonido del boton
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	switch(global.promocionar_juego){
		case "ACEPTADO_STICKFIGHT":
			url_open("https://play.google.com/store/apps/details?id=com.cheshirex.stickmanthefight") 
			global.mostrar_promocion_stickFight = false
			ini_open("comandos.ini")
				ini_write_real("jugadorDatos","mostrar_promocion_stickFight",global.mostrar_promocion_stickFight)
			ini_close()
		break;
		case "ACEPTADO_FALLRUN": 
			url_open("https://play.google.com/store/apps/details?id=com.cheshirex.fallrun") 
			global.mostrar_promocion_fallRun = false
			ini_open("comandos.ini")
				ini_write_real("jugadorDatos","mostrar_promocion_fallRun",global.mostrar_promocion_fallRun)
			ini_close()
		break;
		case "ACEPTADO_STICKHEROES": 
			url_open("https://play.google.com/store/apps/details?id=com.cheshirex.stickmanheroes") 
			global.mostrar_promocion_stickheroes = false
			ini_open("comandos.ini")
				ini_write_real("jugadorDatos","mostrar_promocion_stickheroes",global.mostrar_promocion_stickheroes)
			ini_close()
		break;
	}
	
	
	alarm[0] = 15
}
