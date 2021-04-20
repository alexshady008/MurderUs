/// @description Va a la pantalla previa a jugar
if (global.investigando) {
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	if (instance_exists(obj_contr_investigacion)) instance_destroy(obj_contr_investigacion)

}
