/// @description Va a la pantalla previa a jugar
if ( global.elegir_mapa_editor){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	if (instance_exists(obj_contr_elegir_mapa_editor)) instance_destroy(obj_contr_elegir_mapa_editor)
}
