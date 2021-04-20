/// @description Crea el nivel
if ( global.jugabilidad=true){
	image_alpha = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Cambia las opciones
		
		if global.visible_opciones == true {
			global.visible_opciones = false
			yscale = -1
		}
		else if global.visible_opciones == false
		{
			global.visible_opciones = true
			yscale = 1
		}

	#endregion
}
