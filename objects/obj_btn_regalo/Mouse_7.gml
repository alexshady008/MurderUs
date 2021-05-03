/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Colocar aqui la mecanica de cuando este boton esta activo o no
		if (habilitado)
			room_goto(rm_regalos)
	#endregion
}
