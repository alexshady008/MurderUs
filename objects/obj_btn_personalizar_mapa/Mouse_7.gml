/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	if (global.ipServidor != global.servidorBrasil) //Borrar despues
	{
		escala_x=1.15
		escala_y=1
	
		/// sonido
		if global.musica == true
		{ audio_play_sound(snd_boton,100,false) }

		#region Cambia el tipo de mapa
			global.tipo_mapa_sala = "personalizado"
			global.editor = true
			room_goto(rm_ver_mapas_pers)
		#endregion
	}
}
