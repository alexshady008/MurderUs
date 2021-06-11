/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == false and global.tarea_completada == false ){
	escala = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_interruptor,100,false) }

	#region Cambia el valor del interruptor
		if !(prendido){
			prendido = true
		}
		else {
			prendido = false
		}
	#endregion
}
