/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region califica
		scr_calificar()

		if !(global.regaloSkins) {
			global.skinsDesbloqueados = global.maxSkins
			global.regaloSkins = true
			ini_open("comandos.ini")
				ini_write_real("jugadorDatos","skinsDesbloqueados",global.skinsDesbloqueados)
				ini_write_real("jugadorDatos","regaloSkins",global.regaloSkins)
			ini_close()
		}
	#endregion
}
