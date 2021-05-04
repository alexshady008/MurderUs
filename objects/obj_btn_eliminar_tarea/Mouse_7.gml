/// @description Va a la pantalla previa a jugar
if !(global.tarea_completada) {
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	if (tarea!=noone and instance_exists(tarea)) instance_destroy(tarea)

}
